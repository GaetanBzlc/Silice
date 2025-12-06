#include "../../config.h"
#include "../../std.h"
#include "../../oled.h"
#include "../../display.h"
#include "../../printf.h"

#include "../../fat_io_lib/src/fat_filelib.h"


const int screen_size = 128;
const int Nb_Circle = 4;

int center_x;
const int center_y = 64;
const int r = 9;
const int reaction_button_mask = 1<<6;
const unsigned int CPU_FREQ_HZ = 50000000;
int space; 
unsigned int timer;


int find_space(int r){
  int space_left = 128 - 2*4*r;
  return space_left/ 5;
}



// utils
static inline void set_px(int x, int y, unsigned char c) {
  if (x>=0 && x<128 && y>=0 && y<128)
    display_framebuffer()[y + (x<<7)] = c;
}

void draw_circle(int cx, int cy, int r, unsigned char c) {
  for(int r_bis = 0;r_bis<r;r_bis++){
    int x = r_bis, y = 0, err = 0;
    while (x >= y) {
      set_px(cx + x, cy + y, c); set_px(cx + y, cy + x, c);
      set_px(cx - y, cy + x, c); set_px(cx - x, cy + y, c);
      set_px(cx - x, cy - y, c); set_px(cx - y, cy - x, c);
      set_px(cx + y, cy - x, c); set_px(cx + x, cy - y, c);
      y++;
      if (err <= 0) { err += 2*y + 1; }
      else { x--; err -= 2*x + 1; }
    }
  }
}

static inline void wait_for_button_release(int mask) {
  while (*BUTTONS & mask) { }
}

static inline unsigned int cycles_to_ms(unsigned int cycles) {
  return cycles / (CPU_FREQ_HZ / 1000);
}

static void print_time_seconds(unsigned int cycles) {
  unsigned int ms = cycles_to_ms(cycles);
  unsigned int seconds = ms / 1000;
  unsigned int milli = ms % 1000;
  printf("%d.", seconds);
  f_putchar('0' + (milli / 100));
  f_putchar('0' + ((milli / 10) % 10));
  f_putchar('0' + (milli % 10));
  printf(" s");
}

static unsigned int measure_reaction_on_circle(int cx, int cy) {
  wait_for_button_release(reaction_button_mask);
  draw_circle(cx, cy, r, 255);
  display_refresh();
  unsigned int start = rdcycle();
  while (!(*BUTTONS & reaction_button_mask)) { }
  unsigned int stop = rdcycle();
  draw_circle(cx, cy, r, 0);
  display_refresh();
  wait_for_button_release(reaction_button_mask);
  return stop - start;
}

void F1(){
  space = find_space(r);
  center_x = space + r;
  memset(display_framebuffer(), 0x00, 128*128);
  display_set_cursor(0,0);
  display_set_front_back_color((127)&255, 0);
  printf("\n Is your reaction time faster than my grandpa's?\n\n");
  printf("== Press B6 to start ==\n");
  printf("Release B6 then press it\nas soon as a circle appears.");
  display_refresh();
  while(1){
    if (*BUTTONS & reaction_button_mask){break;}
  }
  wait_for_button_release(reaction_button_mask);
  pause(100000);
  unsigned int reaction_times[Nb_Circle];
  timer = 0;
  for (int i = 0; i<Nb_Circle;i++){
    pause(50000000);
    reaction_times[i] = measure_reaction_on_circle(center_x, center_y);
    timer += reaction_times[i];
    center_x += 2*r + space;
  } 
  memset(display_framebuffer(), 0x00, 128*128);
  display_set_cursor(0,0);
  display_set_front_back_color(255, 0);
  printf("Temps par essai:\n\n");
  for (int i = 0; i < Nb_Circle; ++i) {
    printf("#%d: ", i+1);
    print_time_seconds(reaction_times[i]);
    printf("\n");
  }
  printf("\nMoyenne: ");
  print_time_seconds(timer / Nb_Circle);
  printf("\n");
  printf("B6 pour revenir.");
  display_refresh();
  while(1){
    if (*BUTTONS & reaction_button_mask){break;}
  }
  memset(display_framebuffer(), 0x00, 128*128);
}
