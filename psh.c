
#include <stdio.h>


int main(int argc, char **argv) {
    // Load config file

    char* line;
    char** tokens;
    int program_status;


    do {
        line = get_stdin();
        tokens = split_line(line);
        program_status = process_tokens(tokens);

        free(line);
        free(tokens);

    } while (program_status)/* TODO: put the condition */;

    // TODO: cleanup
    // TODO: return correct code
}
