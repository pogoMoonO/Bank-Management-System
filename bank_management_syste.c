#include <stdio.h>
#include <stdlib.h>

void menu();


int main()
{
    char pass[10], password[10] = "codewithc"; // 下面是密碼

    int i = 0;
    printf("\n\n\t\tEnter the password to login:");
    scanf("%s", pass);
    // cls : command similar clear in linux and mac
    // if (strcmp(pass, password) == 0)
    // {
    //     printf("\n\nPassword Match!\nLOADING");
    //     for (i = 0; i <= 6; i++)
    //     {
    //         fordelay(100000000);
    //         printf(".");
    //     }
    //     system("cls");
    //     menu();
    // }
    // else
    // {
    //     printf("\n\nWrong password!!\a\a\a");
    // login_try:
    //     printf("\nEnter 1 to try again and 0 to exit:");
    //     scanf("%d", &main_exit);
    //     if (main_exit == 1)
    //     {

    //         system("cls");
    //         main();
    //     }

    //     else if (main_exit == 0)
    //     {
    //         system("cls");
    //         close();
    //     }
    //     else
    //     {
    //         printf("\nInvalid!");
    //         fordelay(1000000000);
    //         system("cls");
    //         goto login_try;
    //     }
    // }
    return 0;
}