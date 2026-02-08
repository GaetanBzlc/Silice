#include "Songs_struct.h"

typedef struct
{
    songs_struct * songs;
    songs_struct * Next;
}  song_List_struct;


typedef struct
{
    song_List_struct * Song_list;
    char * Album_Name;
    int Nb_songs;
}Album_struct;

song_List_struct Add_song_to_album(Album_struct * album,char * name);
Album_struct new_album(const char * name);