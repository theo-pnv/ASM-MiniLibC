#include <stdio.h>

extern int	strcmp(const char *, const char *);

int		main()
{
  printf("shorter s2: %d\n", strcmp("Victor", "Vic"));
  return 0;
}
