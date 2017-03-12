#include <stdio.h>
#include <string.h>

int		main()
{
  char		*s = "Hello World !";

  printf("%s\n", rindex(s, 'z'));
  return 0;
}
