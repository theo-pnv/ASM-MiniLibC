#include <stdio.h>
#include <string.h>

int		main()
{
  char		s[14] = "Hello World !\n";

  printf("%s\n", strchr(s, 'l'));
  return 0;
}
