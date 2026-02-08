#include <string.h> // Required for strcpy

typedef struct
{
    char Name[20];
}songs_struct;


songs_struct new_song(const char * name){
    songs_struct new;
    strncpy(new.Name, name, sizeof(new.Name) - 1);
    new.Name[sizeof(new.Name) - 1] = '\0'; // Ensure null-termination
    return new;
}
