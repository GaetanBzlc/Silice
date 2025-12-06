// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "sdcard.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "src/menu.h"
#include "src/audio_part/audio_menu.h"
#include "src/audio_part/audio_play.h"
#include "src/game_part/game_menu.h"
#include "fat_io_lib/src/fat_filelib.h"

int situation;
#define MAX_STR_ALBUM 64
char Album[MAX_STR_ALBUM];
int *back;

void main()
{
  *back = 0;
  while(1){
    situation = Init_menu();

    if (situation == 0){
      while(1){
        audio_menu(Album,back);
        if (*back){*back = 0; break;}
        Select_and_play_Song(Album,back);
        if (*back){*back = 0; break;}
      }
    }
    else if (situation == 1){
      Game_menu();
    }
  }
  
}
