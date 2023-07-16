#include <stdio.h>
#include <SDL2/SDL.h>

int main(int argc, char* argv[]) {
    if (SDL_Init(SDL_INIT_VIDEO) != 0) {
        fprintf(stderr, "Could not initialize sdl2: %s\n", SDL_GetError());
        return 1;
    }
    printf("SDL initialized successfully\n");

    SDL_Quit();

    printf("Hello world\n");
    return 0;
}
