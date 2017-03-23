#include <stdio.h>
#include <string.h>

int		main()
{
  char		s1[10] = "alatoto";
  char		s2[10] = "totototo";

  printf("%s\n", memmove(s1, s2, 3));
}
