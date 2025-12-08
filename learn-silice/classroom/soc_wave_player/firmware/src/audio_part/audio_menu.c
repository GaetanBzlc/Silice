#include "../../config.h"
#include "../../std.h"
#include "../../oled.h"
#include "../../display.h"
#include "../../printf.h"

#include "../../fat_io_lib/src/fat_filelib.h"



#define MAX_ALBUMS 8
#define MAX_PATH 64
#define MAX_STR_ALBUM 23
char Albums[MAX_ALBUMS][MAX_STR_ALBUM];
int sizes[MAX_ALBUMS];
int nAlbums;
int init = 0;


// recursive listing of /song and subdirectories, bounded by MAX_ALBUMS
static void list_Albums(const char *path) {
  FL_DIR d;
  struct fs_dir_ent e;
  if (!fl_opendir(path, &d)) {
    return;
  }
  while (nAlbums < MAX_ALBUMS && fl_readdir(&d, &e) == 0) {
    if (e.filename[0] == '.') {
      continue; // skip . and ..
    }
    if (e.is_dir) {
      strncpy(Albums[nAlbums], e.filename, MAX_STR_ALBUM - 1);
      Albums[nAlbums][MAX_STR_ALBUM - 1] = '\0';
      sizes[nAlbums] = e.size;
      ++nAlbums;
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

void audio_menu(char * Album,int *back){

    if (init == 0){
      init = 1;
      display_set_cursor(0,0);
      display_set_front_back_color(255,0);
      printf("audio_part init ... ");
      display_refresh();
      nAlbums = 0;
      list_Albums("/song");

      if (nAlbums == 0) {
          display_set_cursor(0,0);
          display_set_front_back_color(255,0);
          printf("No files found in /song.\n");
          display_refresh();
          while (1) { }
      }
    }

    // selection menu (btn3: down, btn4: up, btn2: play)
    int selected = 0;
    int pulse = 0;
    while (1) {
        display_set_cursor(0,0);
        display_set_front_back_color((pulse+127)&255, pulse);
        pulse += 7;
        printf("   == Albums (/Albums) ==   \n\n");
        for (int i = 0; i < nAlbums; ++i) {
        display_set_front_back_color(i==selected ? 0 : 255, i==selected ? 255 : 0);
        printf("%d> %s\n", i, Albums[i]);
        }
        display_refresh();

        if (*BUTTONS & (1<<4)) {
        ++selected;
        }
        if (*BUTTONS & (1<<3)) {
        --selected;
        }
        if (selected < 0) selected = nAlbums - 1;
        if (selected >= nAlbums) selected = 0;
        
        if (*BUTTONS & (1<<5)) {
          *back = 1;
          break;
        }
        if (*BUTTONS & (1<<6)) {
          strncpy(Album, Albums[selected], MAX_STR_ALBUM - 1);
          Album[MAX_STR_ALBUM - 1] = '\0';
          memset(display_framebuffer(),0x00,128*128);
          display_refresh();
          break;
        
        }

    }
}