#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>


#define PWD_LEN 56


void create_password(int timestamp, char *dst, size_t len)
{
//    printf("%d\n", time(NULL));
    srandom(timestamp);

    for (size_t i = 0; i < len - 1; i++) {
        dst[i] = 'A' + random() % ('Z' - 'A');
    }

    dst[len - 1] = '\0';
}


int main(int argc, char *argv[])
{
    char password[PWD_LEN];

    int t;
    for(t=1606780800; t<=1606780800+24*3600; t++)
    {
        create_password(t, password, PWD_LEN);
        printf("%s\n", password);
    }

    return 0;
}
