#include <stdio.h>
#include <string.h>

void 		lol()
{
  char		s1[6] = "ahort";
  char		s2[11] = "aooooong !";

  memmove(s1, s2, 5);
  printf("%s\t%s\n", s1, s2);
  memmove(s2, s1, 5);
  printf("%s\t%s\n", s1, s2);

  char		s3[6] = "bhort";
  char		s4[11] = "booooong !";

  memmove(s3, s4, 10);
  printf("%s\t%s\n", s3, s4);

  memmove(s4, s3, 10);
  printf("%s\t%s\n", s4, s3);

  char		s5[6] = "chort";
  char		s6[11] = "cooooong !";

  memmove(s5, s6, 20);
  printf("%s\t%s\n", s5, s6);
  memmove(s6, s5, 20);
  printf("%s\t%s\n", s6, s5);
}

int		main()
{
  lol();
}
