// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"

// include the fat32 library
#include "fat_io_lib/src/fat_filelib.h"

#define MAX_FILES 32
char names[MAX_FILES][64];
int sizes[MAX_FILES];
int nfiles = 0;

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
      continue; // skip hidden, ., ..
    }
    if (e.is_dir) {
      char next[64];
      concat_path(next, path, e.filename, sizeof(next));
      list_dir(next);
    } else {
      concat_path(names[nfiles], path, e.filename, sizeof(names[nfiles]));
      sizes[nfiles] = e.size;
      ++nfiles;
    }
  }
  fl_closedir(&d);
}

void main()
{
  // turn LEDs off
  *LEDS = 0;
  // install putchar handler for printf
  f_putchar = display_putchar;
  // init screen
  oled_init();
  oled_fullscreen();
  oled_clear(0);
  // init sdcard
  sdcard_init();
  // initialise File IO Library
  fl_init();

  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) { /* affiche "insert SD" */ }

  list_dir("/song");

  if (nfiles == 0) {
    display_set_cursor(0,0);
    display_set_front_back_color(255,0);
    printf("No files found on SD.\n");
    display_refresh();
    while (1) { }
  }

  int selected = 0, pulse = 0;
  for (;;) {
    display_set_cursor(0,0);
    display_set_front_back_color((pulse+127)&255, pulse); pulse += 7;
    printf("    ===== files =====    \n\n");
    for (int i = 0; i < nfiles; ++i) {
      display_set_front_back_color(i==selected ? 0 : 255, i==selected ? 255 : 0);
      printf("%d> %s [%d]\n", i, names[i], sizes[i]);
    }
    display_refresh();

    if (*BUTTONS & (1<<3)) selected++;
    if (*BUTTONS & (1<<4)) selected--;
    if (selected < 0) selected = nfiles-1;
    if (selected >= nfiles) selected = 0;
  }
}
