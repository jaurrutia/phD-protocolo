/*Jonathan Urrutia 2022/02/12

We chage a single column list to a  row list to use in Comsol

*/

#include <stdio.h>


int main()
{
int c;

printf("wlength \" ");

while((c = getchar()) != EOF){
  if(c == '\n'){ c = ' ';}
  putchar(c);
}

printf(" \" [nm]");
return 0;
}
