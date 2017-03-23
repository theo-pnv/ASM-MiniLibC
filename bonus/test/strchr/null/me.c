#include <stdio.h>

extern char	*strchr(const char *, int);

int		main()
{
  char		s[14] = "Hello World !";

  if (strchr(s, '\0') == '\0')
    printf("TERMINATING CHARACTER");
  else
    printf("NON-TERMINATING CHARACTER - %s", strchr(s, '\0'));
  return 0;
}
