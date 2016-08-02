#include <stdio.h>

void f(int x)
{
    int local = x + 1;
    int i;
    {
        int j = 18;
        i = i + j;
    }
    int j = 1;

    for (i = 0; i < local; i = i + j)
        printf("i = %d\n", i);
}


int main()
{
    f(4);
    return 0;
}
