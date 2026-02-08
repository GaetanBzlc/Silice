#include "../../config.h"
#include "../../std.h"
#include "../../oled.h"
#include "../../display.h"
#include "../../printf.h"
#include "FI.h"

#include "../../fat_io_lib/src/fat_filelib.h"


int const NbGameMenu = 2;
static const char *Game_Menu[] = { "F1", "comming_soon" };

void Game_menu (){
    int pulse = 0;
    int selected = 0;
    while (1) {
        display_set_cursor(0,0);
        display_set_front_back_color((pulse+127)&255, pulse);
        pulse += 1;
        printf("   == Select Game ==   \n\n");
        for (int i = 0; i < NbGameMenu; ++i) {
            display_set_front_back_color(i==selected ? 0 : 255, i==selected ? 255 : 0);
            printf("%d> %s\n", i, Game_Menu[i]);
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
        if (selected < 0) selected = NbGameMenu - 1;
        if (selected >= NbGameMenu) selected = 0;

        if (*BUTTONS & (1<<6)) {
            memset(display_framebuffer(), 0x00, 128*128);
            display_refresh();
            if(selected == 0){
                F1();
            }
            // Il n'est pas nécessaire d'attendre ici car F1.c le fait déjà avant de retourner.
        }

        if (*BUTTONS & (1<<5)) {
            memset(display_framebuffer(), 0x00, 128*128);
            display_refresh();
            while (*BUTTONS & (1<<5)) {} // Attendre le relâchement
            break;
        }
    }
}