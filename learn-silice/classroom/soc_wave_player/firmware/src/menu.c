#include "../config.h"
#include "../sdcard.h"
#include "../std.h"
#include "../oled.h"
#include "../display.h"
#include "../printf.h"

#include "../fat_io_lib/src/fat_filelib.h"


int const NbMenu = 2;
static const char *Menu[] = { "Music", "Games" };


int Init_menu(){
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

  int pulse = 0;
  int selected = 0;
  while (1) {
    display_set_cursor(0,0);
    display_set_front_back_color((pulse+127)&255, pulse);
    pulse += 7;
    printf("   == Music / Game ==   \n\n");
    for (int i = 0; i < NbMenu; ++i) {
      display_set_front_back_color(i==selected ? 0 : 255, i==selected ? 255 : 0);
      printf("%d> %s\n", i, Menu[i]);
    }
    display_refresh();

    if (*BUTTONS & (1<<4)) {
      ++selected;
    }
    if (*BUTTONS & (1<<3)) {
      --selected;
    }
    if (selected < 0) selected = NbMenu - 1;
    if (selected >= NbMenu) selected = 0;
    if (*BUTTONS & (1<<6)) {
      memset(display_framebuffer(), 0x00, 128*128);
      display_refresh();
      return selected;
    }
  }
}