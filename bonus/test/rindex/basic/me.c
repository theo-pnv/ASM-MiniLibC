#include <stdio.h>

extern char	*rindex(const char *, int);

int		main()
{
  char		*s = "Salutations !";

  printf("%s\n", rindex(s, 'a'));
  return 0;
}
