#include <stdio.h>

extern int	strncmp(const char *, const char *, size_t);

int		main()
{
  printf("matching: %d\n", strncmp("Victor", "Victor", 6));
  printf("matching: %d\n", strncmp("Victor", "Victor", 2));
  printf("matching: %d\n", strncmp("Victor", "Victor", 12));
  printf("matching: %d\n", strncmp("Victor", "Victor", -12));
  return 0;
}
