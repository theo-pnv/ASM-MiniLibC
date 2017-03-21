#include <stdio.h>
#include <string.h>

int		main()
{
  printf("null: %d\n", strcasecmp("\0", "\0"));
  return 0;
}
