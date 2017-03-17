#include <stdio.h>

extern char	*_strchr(const char *, int);

int		main()
{
  char		s[14] = "Hello World !";

  if (_strchr(s, '\0') == '\0')
    printf("TERMINATING CHARACTER");
  else
    printf("NON-TERMINATING CHARACTER - %s", _strchr(s, '\0'));
  return 0;
}
