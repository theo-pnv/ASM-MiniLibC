#include <stdio.h>

extern int	strcmp(const char *, const char *);

int		main()
{
  printf("s2 longer: %d\n", strcmp("Victor", "Victorien"));
  return 0;
}
