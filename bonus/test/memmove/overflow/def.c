#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int		main()
{
  char		*t1;
  char		*t2;

  t1 = t2 = malloc(2);
  t1 = strdup("OK");
  t2 = strdup("KO");
  memmove(t1, t2, 1000);
  printf("%s - %s", t1, t2);
  return 0;
}
