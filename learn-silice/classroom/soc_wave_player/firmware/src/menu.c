#include "../config.h"
#include "../sdcard.h"
#include "../std.h"
#include "../oled.h"
#include "../display.h"
#include "../printf.h"

#include "../fat_io_lib/src/fat_filelib.h"


extern void clear_audio();

int const NbMenu = 2;
static const char *Menu[] = { "Music", "Games" };
int Init_stat = 0;

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
  if(!Init_stat){
    Init_stat = 1;
    // init sdcard
    sdcard_init();
    // initialise File IO Library
    fl_init();
    display_refresh();
    // attach media access functions to library
    while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
      // try again, we need this
    }
  }
  
  printf("done.\n");
  display_refresh();
  clear_audio();
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
    printf("\n\n\n back :B5 select :B6");
    display_refresh();

    if (*BUTTONS & (1<<4)) {
      ++selected;
      while (*BUTTONS & (1<<4)) {} // Attendre le relâchement
    }
    if (*BUTTONS & (1<<3)) {
      --selected;
      while (*BUTTONS & (1<<3)) {} // Attendre le relâchement
    }
    if (selected < 0) selected = NbMenu - 1;
    if (selected >= NbMenu) selected = 0;
    if (*BUTTONS & (1<<6)) {
      memset(display_framebuffer(), 0x00, 128*128);
      display_refresh();
      // Attendre le relâchement pour éviter que le menu suivant ne réagisse immédiatement
      while (*BUTTONS & (1<<6)) {}
      return selected;
    }
  }
}