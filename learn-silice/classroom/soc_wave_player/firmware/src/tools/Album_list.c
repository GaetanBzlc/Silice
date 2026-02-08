#include "Album_list.h"
#include <stdlib.h> // For malloc, free
#include <stddef.h> // For NULL

// This is a forward declaration for a function that would free a song list.
// As song lists are not yet populated, its implementation is deferred.
// static void free_song_list(song_List_struct* head);

/**
 * @brief Initializes an empty album collection.
 *
 * @param collection Pointer to the album collection to initialize.
 */
void init_album_collection(Album_collection* collection) {
    if (collection) {
        collection->head = NULL;
        collection->count = 0;
    }
}

/**
 * @brief Frees all memory associated with an album collection, including all nodes.
 *
 * @param collection Pointer to the album collection to free.
 */
void free_album_collection(Album_collection* collection) {
    if (!collection) {
        return;
    }

    Album_list_node* current = collection->head;
    while (current != NULL) {
        Album_list_node* next_node = current->next;

        // NOTE: The album name is an array within the struct, so it does not need to be freed separately.
        // NOTE: The song list is not yet implemented, but when it is, it should be freed here.
        // if (current->album.Song_list) {
        //     free_song_list(current->album.Song_list);
        // }

        free(current);
        current = next_node;
    }

    collection->head = NULL;
    collection->count = 0;
}

/**
 * @brief Retrieves a pointer to an album at a specific index in the list.
 *
 * @param collection Pointer to the album collection.
 * @param index The index of the album to retrieve.
 * @return A pointer to the Album_struct, or NULL if the index is out of bounds.
 */
Album_struct* get_album_by_index(Album_collection* collection, int index) {
    if (!collection || index < 0 || index >= collection->count) {
        return NULL;
    }

    Album_list_node* current = collection->head;
    for (int i = 0; i < index; i++) {
        current = current->next;
    }

    return &current->album;
}
