#include <stdio.h>
#include <string.h>

int		main()
{
  printf("null: %d\n", strncmp("\0", "\0", 0));
  printf("null: %d\n", strncmp("\0", "\0", 1));
  printf("null: %d\n", strncmp("\0", "\0", 12));
  return 0;
}
