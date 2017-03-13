#include <stdio.h>

extern void	*memmove(void *, const void *, size_t);

int		main()
{
  char		t1[2];
  char		t2[2];

  memmove(t1, t2, -10);
  printf("%s - %s", t1, t2);
  return 0;
}
