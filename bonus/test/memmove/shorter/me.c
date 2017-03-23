#include <stdio.h>

extern void	*memmove(void *, const void *, size_t);

void 		lol()
{
  char		s1[5] = "short";
  char		s2[10] = "looooong !";

  memmove(s1, s2, 5);
  printf("%s\t%s\n", s1, s2);

  char		s3[5] = "short";
  char		s4[10] = "looooong !";

  memmove(s3, s4, 10);
  printf("%s\t%s\n", s3, s4);

  char		s5[5] = "short";
  char		s6[10] = "looooong !";

  memmove(s5, s6, 20);
  printf("%s\t%s\n", s5, s6);
}

int		main()
{
  char		s1[10] = "alatoto";
  char		s2[10] = "totototo";

  printf("%s\n", memmove(s1, s2, 3));
}
