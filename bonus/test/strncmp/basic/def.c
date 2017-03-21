#include <stdio.h>
#include <string.h>

int		main()
{
  printf("matching: %d\n", strncmp("Victor", "Victor", 6));
  printf("matching: %d\n", strncmp("Victor", "Victor", 2));
  printf("matching: %d\n", strncmp("Victor", "Victor", 12));
  printf("matching: %d\n", strncmp("Victor", "Victor", -12));
  return 0;
}
