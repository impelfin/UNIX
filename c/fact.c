#include <stdio.h>

int fact(int n);

void main()
{
    int n;
    printf("input number : ");
    scanf("%d", &n);
    printf("%d! =  %d\n ", n, fact(n));
}


int fact(int n)
{
    if(n == 1)
        return 1;
    else
        return n * fact(n -1);
}