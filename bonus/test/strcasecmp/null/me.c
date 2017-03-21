#include <stdio.h>

extern int	strcasecmp(const char *, const char *);

int		main()
{
  printf("null: %d\n", strcasecmp("\0", "\0"));
  return 0;
}
