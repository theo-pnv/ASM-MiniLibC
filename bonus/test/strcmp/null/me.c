#include <stdio.h>

extern int	strcmp(const char *, const char *);

int		main()
{
  printf("null: %d\n", strcmp("\0", "\0"));
  return 0;
}
