#include <stdio.h>

extern int	strncmp(const char *, const char *, size_t);

int		main()
{
  printf("shorter s2: %d\n", strncmp("Victor", "Vic", 3));
  printf("shorter s2: %d\n", strncmp("Victor", "Vic", 1));
  printf("shorter s2: %d\n", strncmp("Victor", "Vic", 12));
  return 0;
}
