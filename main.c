#include <stdio.h>
#include <string.h>

extern void 	*_memmove(void *, void *, size_t);

int		main()
{
  char		s1[10] = "hello";
  char		s2[10] = "hello";

  printf("%s\n", memmove(&s2[1], s2, 0));
  printf("%s\n", _memmove(&s1[1], s1, 0));
  return (0);
}
