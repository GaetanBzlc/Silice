#include "Songs_struct.h"
#include <stdlib.h>


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


song_List_struct Add_to_list(songs_struct * song,song_List_struct * list){
    song_List_struct new;
    new.songs = song;
    new.Next = list;
    return new;
}

song_List_struct Add_song_to_album(Album_struct * album,char * name){
    songs_struct new = new_song(name);
    return Add_to_list(&new,album->Song_list);
}

Album_struct new_album(const char * name){
    Album_struct new;
    new.Album_Name = name;
    new.Nb_songs = 0;
    new.Song_list = NULL;
    return new;

}