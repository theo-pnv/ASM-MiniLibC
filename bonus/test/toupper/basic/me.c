#include <stdio.h>

extern int	toupper(int);

int		main()
{
  char		s[13] = "Hello World !";

  printf("%s\n", s);
  for (int i = 0; i < 13; i++) {
    s[i] = toupper(s[i]);
  }
  printf("%s\n", s);
}
