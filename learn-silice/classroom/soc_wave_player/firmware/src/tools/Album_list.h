#pragma once

#include "Album_struct.h"

// A node in the linked list of albums.
// It contains the album data directly.
typedef struct Album_list_node_t {
    Album_struct album;
    struct Album_list_node_t* next;
} Album_list_node;

// A structure to manage the entire collection of albums.
// It holds a pointer to the first node (head) and the total count of albums.
typedef struct {
    Album_list_node* head;
    int count;
} Album_collection;

// --- Function prototypes for managing the list ---
// The implementation for these would typically go in a .c file.

// Initializes an empty album collection.
void init_album_collection(Album_collection* collection);

// Frees all memory associated with the list (all nodes).
void free_album_collection(Album_collection* collection);

// Retrieves a pointer to an album at a specific index in the list.
Album_struct* get_album_by_index(Album_collection* collection, int index);
