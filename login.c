
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include "login.h"

#define LSIZ 128
#define RSIZ 10

int login(char pass[10])
{
    char buff[255];

    FILE *FcheckoutPassword, *FinitPassword;
    FinitPassword = fopen("data/password.txt", "r");

    fgets(buff, 255, (FILE *)FinitPassword);
    char initPassword[10];

    if (strcmp("\x01", buff) == 0)
    {
        printf("\n\n\t\tEnter the  initial password:");
        scanf("%s", &initPassword[10]);

        FcheckoutPassword = fopen("data/password.txt", "w");

        fprintf(FcheckoutPassword, "%s", &initPassword[10]);

        fclose(FcheckoutPassword);
        printf("\nAccount created successfully!");
    }

    printf("\n\n\t\tEnter the password to login:");
    scanf("%s", pass);

    char *buffer = NULL;
    size_t size = 0;
    /* Get the buffer size */
    fseek(FinitPassword, 0, SEEK_END); /* Go to end of file */
    size = ftell(FinitPassword);       /* How many bytes did we pass ? */

    /* Set position of stream to the beginning */
    rewind(FinitPassword);

    /* Allocate the buffer (no need to initialize it with calloc) */
    buffer = malloc((size + 1) * sizeof(*buffer)); /* size + 1 byte for the \0 */

    /* Read the file into the buffer */
    fread(buffer, size, 1, FinitPassword); /* Read 1 chunk of size bytes from fp into buffer */

    /* NULL-terminate the buffer */
    buffer[size] = '\0';

    sleep(5);

    // // printf(pass ,%s )
    if (strcmp(pass, buffer) == 0)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}