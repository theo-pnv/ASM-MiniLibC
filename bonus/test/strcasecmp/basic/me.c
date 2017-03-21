#include <stdio.h>

extern int	strcasecmp(const char *, const char *);

int		main()
{
  printf("matching: %d\n", strcasecmp("Victor", "Victor"));
  return 0;
}
