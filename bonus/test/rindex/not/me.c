#include <stdio.h>

extern char	*rindex(const char *, int);

int		main()
{
  char		*s = "Hello World !";

  printf("%s\n", rindex(s, 'z'));
  return 0;
}
