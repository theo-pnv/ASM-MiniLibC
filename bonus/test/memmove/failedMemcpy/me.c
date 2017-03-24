#include <stdio.h>

extern void	*memmove(void *, const void *, size_t);

int		main()
{
  char		s2[10] = "hello";

  printf("%s\n", memmove(&s2[1], s2, 3));
}
