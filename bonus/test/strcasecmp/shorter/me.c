#include <stdio.h>

extern int	strcasecmp(const char *, const char *);

int		main()
{
  printf("shorter s2: %d\n", strcasecmp("Victor", "Vic"));
  return 0;
}
