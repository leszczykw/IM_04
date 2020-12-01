#include <stdio.h>

int main()
{
int a, i;
double silnia=1;


    printf("Z jakiej liczby obliczyc silnie?: ");
    scanf("%d", &a);
    i=a;
    while(i>=1)
    {
        silnia=silnia*i;
        i--;
    }
    printf("\nSilnia z %d = %.0f = %.4E \n", a, silnia, silnia);
    return 0;
}
