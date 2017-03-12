#include <stdio.h>
#include <string.h>

int		main()
{
  char		test[14] = "Hello World !\n";

  printf("Before memset: %s", test);
  memset(&test, 'a', 4);
  memset(&test[10], 'b', 2);
  printf("After memset: %s", test);
  return 0;
}
