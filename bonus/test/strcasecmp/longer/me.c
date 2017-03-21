#include <stdio.h>

extern int	strcasecmp(const char *, const char *);

int		main()
{
  printf("s2 longer: %d\n", strcasecmp("Victor", "Victorien"));
  return 0;
}
