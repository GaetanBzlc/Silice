#include "../../config.h"
#include "../../std.h"
#include "../../oled.h"
#include "../../display.h"
#include "../../printf.h"

#include "../../fat_io_lib/src/fat_filelib.h"
#include <stdint.h>

int NSongs;
#define MAX_SONGS 8
#define MAX_PATH 64
#define MAX_STR 23
char Songs[MAX_SONGS][MAX_STR];



static void list_song(const char *path) {
  FL_DIR d;
  struct fs_dir_ent e;
  if (!fl_opendir(path, &d)) {
    return;
  }
  while (NSongs < MAX_SONGS && fl_readdir(&d, &e) == 0) {
    if (e.filename[0] == '.') {
      continue; // skip . and ..
    }
    if (!e.is_dir) {
      strncpy(Songs[NSongs], e.filename, MAX_STR - 1);
      Songs[NSongs][MAX_STR - 1] = '\0';
      ++NSongs;
    }
  }
  fl_closedir(&d);
}



void music_play(int selected,char * Album_Path){
        memset(display_framebuffer(),0x00,128*128);
        display_set_cursor(0,0);
        display_set_front_back_color((127)&255, 0);


        printf("   == Musique Maestro ==   \n\n");
        
        char Song_Path[128];
        strcpy(Song_Path, Album_Path);
        strcat(Song_Path, "/");
        strcat(Song_Path, Songs[selected]);

        FL_FILE *f = fl_fopen(Song_Path,"rb");

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
            printf("playing "); printf(Songs[selected]); printf("\n");
            printf("B5 to pause\n B3 to speed up\n B4 to slow down\n B6 to leave");
            display_refresh();
            clear_audio();
            int leds = 0;
            

            int paused = 0;
            int prev_buttons = 0;
            int speed_shift = 0;
            const int size = 512;
            uint8_t tmp[512<<2];
            int start = f->bytenum;
            while (1) {
                
                int buttons = *BUTTONS;
                
                // le bouton 5 permet de mettre le son en pause (toggle sur front montant)
                if ((buttons & (1<<5)) && !(prev_buttons & (1<<5))) {
                  paused = !paused;
                  if (paused) { clear_audio(); }
                }
                if (paused) { prev_buttons = buttons; continue; }


                if (buttons & (1<<3)) { if (speed_shift < 2) { speed_shift++; } }
                
                
                else if (buttons & (1<<4)) { if (speed_shift > -2) { speed_shift--; } }
                
                else if(buttons & (1<<6 )) {
                    while (*BUTTONS & (1<<6)) {}
                    break;
                }
        
                uint8_t *addr = (uint8_t*)(*AUDIO);

        
                // (use 512 bytes reads to avoid extra copies inside fat_io_lib)
                int size_buf = (speed_shift >= 0) ? (size << speed_shift)
                                  : (size >> -speed_shift);

                //si la vitesse est négative on fair reculer le pointeur de fichier
                if (speed_shift < 0) {
                  uint32_t back = size >> -speed_shift; // ou la quantité que tu veux
                  back = back << 4;
                  if (f->bytenum > back) f->bytenum -= back;
                  else f->bytenum = start; // reste collé au début
                } 


                int sz = fl_fread(tmp,1,size_buf,f);
                
                if (sz < size_buf) break; // reached end of file
                
                int step     = 1 << (speed_shift >= 0 ? speed_shift : -speed_shift);
                
                if(speed_shift >= 0 ){
                  for (int o = 0, i = 0; o < 512; ++o, i += step) {
                    addr[o] = tmp[i];
                  }
                }
                else{
                  // Play backwards: repeat each sample 'step' times in reverse order to fill the 512-byte audio window.
                  const int repeat = step;
                  for (int o = 0; o < 512; ++o) {
                    int idx = size_buf - 1 - (o / repeat);
                    if (idx < 0) { idx = 0; }
                    addr[o] = tmp[idx];
                  }
                }
                
                
                while (addr == (uint8_t*)(*AUDIO)) { }
                // light show!
                if(speed_shift == -2){
                  leds = 1;
                }
                else if(speed_shift == -1){
                  leds = 1<< 2;
                }
                else if(speed_shift == 0){
                  leds = 1<< 4;
                }
                else if(speed_shift ==1 ){
                  leds = 1<< 6;
                }
                else {
                  leds = 511;
                }

                *LEDS = leds;
                prev_buttons = buttons;
            }
            // close
            fl_fclose(f);
        }
}


void Select_and_play_Song(char * Album, int *back){
    *back = 0;
    display_set_cursor(0,0);
    display_set_front_back_color(255,0);
    display_refresh();
    
    char Message[32]; 
    Message[0] = '\0';
    strcat(Message, Album);
    strcat(Message, " init..");
    

    NSongs = 0;
    char Album_Path[32];
    strcpy(Album_Path, "/song/");
    strcat(Album_Path, Album);

    list_song(Album_Path);

    if (NSongs == 0) {
        display_set_cursor(0,0);
        display_set_front_back_color(255,0);
        printf("No files found in ");
        printf(Album);
        printf(" folder \n");
        display_refresh();
        while (1) { }
    }

    int selected = 0;
    while (1) {
        display_set_cursor(0,0);
        display_set_front_back_color((127)&255, 0);
        printf("   == Songs (/Songs) ==   \n\n");
        for (int i = 0; i < NSongs; ++i) {
        display_set_front_back_color(i==selected ? 0 : 255, i==selected ? 255 : 0);
        printf("%d> %s\n", i, Songs[i]);
        }
        display_refresh();

        if (*BUTTONS & (1<<4)) {
        ++selected;
        while (*BUTTONS & (1<<4)) {} // Attendre le relâchement
        }
        if (*BUTTONS & (1<<3)) {
        --selected;
        while (*BUTTONS & (1<<3)) {} // Attendre le relâchement
        }
        if (selected < 0) selected = NSongs - 1;
        if (selected >= NSongs) selected = 0;
        if (*BUTTONS & (1<<5)) {
          memset(display_framebuffer(),0x00,128*128);
          *back = 1; // Signale qu'il faut retourner au menu principal
          while (*BUTTONS & (1<<5)) {} // Attendre le relâchement
          display_refresh();
          break;
        }
        if (*BUTTONS & (1<<6)) {
          memset(display_framebuffer(),0x00,128*128);
          display_refresh();
          music_play(selected,Album_Path);
          memset(display_framebuffer(),0x00,128*128);
          display_refresh();
        }
    }
}
