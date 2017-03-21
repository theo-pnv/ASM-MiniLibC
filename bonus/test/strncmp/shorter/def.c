#include <stdio.h>
#include <string.h>

int		main()
{
  printf("shorter s2: %d\n", strncmp("Victor", "Vic", 3));
  printf("shorter s2: %d\n", strncmp("Victor", "Vic", 1));
  printf("shorter s2: %d\n", strncmp("Victor", "Vic", 12));
  return 0;
}
