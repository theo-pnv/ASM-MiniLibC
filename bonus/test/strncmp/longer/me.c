#include <stdio.h>

extern int	strncmp(const char *, const char *, size_t);

int		main()
{
  printf("s2 longer: %d\n", strncmp("Victor", "Victorien", 6));
  printf("s2 longer: %d\n", strncmp("Victor", "Victorien", 2));
  printf("s2 longer: %d\n", strncmp("Victor", "Victorien", 20));
  return 0;
}
