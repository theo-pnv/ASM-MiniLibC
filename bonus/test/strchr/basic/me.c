#include <stdio.h>

extern char	*strchr(const char *, int);

int		main()
{
  char		s[14] = "Hello World !\n";

  printf("%s\n", strchr(s, 'l'));
  return 0;
}
