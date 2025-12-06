#include "../../config.h"
#include "../../std.h"
#include "../../oled.h"
#include "../../display.h"
#include "../../printf.h"

#include "../../fat_io_lib/src/fat_filelib.h"

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


void Select_and_play_Song(char * Album,int* back){
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
        }
        if (*BUTTONS & (1<<3)) {
        --selected;
        }
        if (selected < 0) selected = NSongs - 1;
        if (selected >= NSongs) selected = 0;
        if (*BUTTONS & (1<<5)) {
          *back = 1;
          break;
        }
        if (*BUTTONS & (1<<6)) {
          break;
        }
    }
    if (!*back){
            memset(display_framebuffer(),0x00,128*128);
        display_set_cursor(0,0);
        display_set_front_back_color((127)&255, 0);


        printf("   == Musique Maestro ==   \n\n");
        display_set_front_back_color(0, 255);
        printf("%d> %s\n", selected, Songs[selected]);
        display_refresh();
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
            printf("playing ... ");
            display_refresh();
            clear_audio();
            int leds = 1;
            int dir  = 0;
            // plays the entire file
            int stop = 0;
            while (1) {
                
                if (*BUTTONS & (1<<5)){stop = !stop;}
                if (stop) { continue; }
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
    
}

