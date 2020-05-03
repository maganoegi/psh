
#include <stdio.h>
#include <stdlib.h>


int main(int argc, char **argv) {
    // Load config file

    char* line;
    char** tokens;
    int program_status;


    do {
        printf("\n$ ");
        line = get_stdin();
        tokens = split_line(line);
        program_status = process_tokens(tokens);

        free(line);
        free(tokens);

    } while (program_status)/* TODO: put the condition */;

    // TODO: cleanup
    // TODO: return correct code
}
