#include <stdio.h>
#include <string.h>

int		main()
{
  char		test[2];

  memset(test, 'a', 1000);
  printf("%s", test);
  return 0;
}
