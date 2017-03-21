#include <stdio.h>

extern int	strcmp(const char *, const char *);

int		main()
{
  printf("matching: %d\n", strcmp("Victor", "Victor"));
  return 0;
}
