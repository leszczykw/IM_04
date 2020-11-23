#include <stdio.h>

int main()
{
float a ,b ,c;

printf("Podaj a=");
scanf("%f", &a);
printf("Podaj b=");
scanf("%f", &b);

printf("\n wynik z dodawania to: %.2f \n", a+b);

printf("\n wynik z odejmowania to: %.2f \n", a-b);

printf("\n wynik z mnozenia to: %.2f \n", a*b);

printf("\n wynik z dzielenia to: %.2f\n", a/b);

a=a*a;

printf("\n nowe a wynosi =%f \n\n", a);

return  0;
}
