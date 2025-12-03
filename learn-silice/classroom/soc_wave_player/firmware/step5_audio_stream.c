// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "sdcard.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"

#include "fat_io_lib/src/fat_filelib.h"

#define MAX_FILES 8
#define MAX_PATH 64
#define MAX_STR 23
char names[MAX_FILES][MAX_PATH];
char song[MAX_FILES][MAX_STR];
int sizes[MAX_FILES];
int nfiles;



// concat path + "/" + name safely into dst
static void concat_path(char *dst, const char *path, const char *name, int max_len) {
  int i = 0;
  while (path[i] && i < max_len - 1) {
    dst[i] = path[i];
    ++i;
  }
  if (i > 0 && dst[i-1] != '/' && i < max_len - 1) {
    dst[i++] = '/';
  }
  int j = 0;
  while (name[j] && i < max_len - 1) {
    dst[i++] = name[j++];
  }
  dst[i] = 0;
}

// recursive listing of /song and subdirectories, bounded by MAX_FILES
static void list_dir(const char *path) {
  FL_DIR d;
  struct fs_dir_ent e;
  if (!fl_opendir(path, &d)) {
    return;
  }
  while (nfiles < MAX_FILES && fl_readdir(&d, &e) == 0) {
    if (e.filename[0] == '.') {
      continue; // skip . and ..
    }
    if (e.is_dir) {
      char next[64];
      concat_path(next, path, e.filename, MAX_PATH);
      list_dir(next);
    } else {
      concat_path(names[nfiles], path, e.filename, MAX_PATH);
      strncpy(song[nfiles], e.filename, MAX_STR - 1);
      song[nfiles][MAX_STR - 1] = '\0';
      sizes[nfiles] = e.size;
      ++nfiles;
    }
  }
  fl_closedir(&d);
}


void clear_audio()
{
  // wait for a buffer swap (sync)
  int *addr = (int*)(*AUDIO);
  while (addr == (int*)(*AUDIO)) { }
  // go ahead
  for (int b=0 ; b<2 ; ++b) {
    // read directly in hardware buffer
    addr = (int*)(*AUDIO);
    // clear buffer
    memset(addr,0,512);
    // wait for buffer swap
    while (addr == (int*)(*AUDIO)) { }
  }
}

void main()
{
  // install putchar handler for printf
  f_putchar = display_putchar;

  oled_init();
  oled_fullscreen();

  memset(display_framebuffer(),0x00,128*128);
  display_refresh();

  display_set_cursor(0,0);
  display_set_front_back_color(255,0);
  printf("init ... ");
  display_refresh();

  // init sdcard
  sdcard_init();
  // initialise File IO Library
  fl_init();
  // attach media access functions to library
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // try again, we need this
  }
  printf("done.\n");
  display_refresh();

  // list songs in /song (recursive)
  nfiles = 0;
  list_dir("/song");

  if (nfiles == 0) {
    display_set_cursor(0,0);
    display_set_front_back_color(255,0);
    printf("No files found in /song.\n");
    display_refresh();
    while (1) { }
  }

  // selection menu (btn3: down, btn4: up, btn2: play)
  int selected = 0;
  int pulse = 0;
  while (1) {
    display_set_cursor(0,0);
    display_set_front_back_color((pulse+127)&255, pulse);
    pulse += 7;
    printf("   == songs (/song) ==   \n\n");
    for (int i = 0; i < nfiles; ++i) {
      display_set_front_back_color(i==selected ? 0 : 255, i==selected ? 255 : 0);
      printf("%d> %s\n", i, song[i]);
    }
    display_refresh();

    if (*BUTTONS & (1<<4)) {
      ++selected;
    }
    if (*BUTTONS & (1<<3)) {
      --selected;
    }
    if (selected < 0) selected = nfiles - 1;
    if (selected >= nfiles) selected = 0;
    if (*BUTTONS & (1<<5)) {
      break;
      
    }
  }

  FL_FILE *f = fl_fopen(names[selected],"rb");
  //FL_FILE *f = fl_fopen("/song/album_3/melodrama.raw","rb");
  if (f == NULL) {
    // error, no file
    printf("file not found.\n");
    display_refresh();
  } else {
    display_set_front_back_color(0,255);
    printf("music file found.\n");
    display_refresh();
    display_set_front_back_color(255,0);
    printf("playing ... ");
    display_refresh();
    clear_audio();
    int leds = 1;
    int dir  = 0;
    // plays the entire file
    while (1) {
      // read directly in hardware buffer
      int *addr = (int*)(*AUDIO);
      // (use 512 bytes reads to avoid extra copies inside fat_io_lib)
      int sz = fl_fread(addr,1,512,f);
      if (sz < 512) break; // reached end of file
      // wait for buffer swap
      while (addr == (int*)(*AUDIO)) { }
      // light show!
      if (leds == 128 || leds == 1) { dir = 1-dir; }
      if (dir) {
        leds = leds << 1;
      } else {
        leds = leds >> 1;
      }
      *LEDS = leds;
    }
    // close
    fl_fclose(f);
  }

}
