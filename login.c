
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include "login.h"

int login(char pass[10], char password[10])
{
    char buff[255];

    FILE *FcheckoutPassword, *FinitPassword;
    FinitPassword = fopen("data/password.txt", "r");
    FcheckoutPassword = fopen("data/password.txt", "w");

    fgets(buff, 255, (FILE *)FinitPassword);
    char initPassword[10];
    
    if (strcmp("\x01", buff) == 0)
    {
        printf("\n\n\t\tEnter the  initial password:");
        scanf("%s", &initPassword[10]);

        fprintf(FcheckoutPassword, "%s ", &initPassword[10]);
        fclose(FcheckoutPassword);
        printf("\nAccount created successfully!");
    }

    printf("\n\n\t\tEnter the password to login:");
    scanf("%s", pass);

    // printf(pass ,%s )
    if (strcmp(pass, password) == 0)
    {
        return 0;
    }
    else
    {

        return 1;
    }
}