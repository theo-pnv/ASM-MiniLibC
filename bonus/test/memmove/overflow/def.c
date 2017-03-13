#include <stdio.h>
#include <string.h>

int		main()
{
  char		t1[2] = "OK";
  char		t2[2] = "KO";

  memmove(t1, t2, 1000);
  printf("%s - %s", t1, t2);
  return 0;
}
