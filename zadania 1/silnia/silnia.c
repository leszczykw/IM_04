#include <stdio.h>

int main()
{
int a, i;
//int silnia; zmiana zmiennej na "pojemniejsza"
double silnia=1;


    printf("Z jakiej liczby obliczyc silnie?: ");
    scanf("%d", &a);

    for (i=1;i<=a;i++)
    {
        silnia=silnia*i;
    }
    printf("\nSilnia z %d = %.0f = %.4E \n", a, silnia, silnia);
    return 0;
}
