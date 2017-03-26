#include <stdio.h>
#include <string.h>

int		main()
{
  char		s2[10] = "hello";

  printf("%s\n", memmove(&s2[1], s2, 3));
  printf("%s\n", memmove(s2, &s2[2], 2));
}
