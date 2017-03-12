#include <stdio.h>

extern void	*memcpy(void *, const void *, size_t);

int		main()
{
  char		t1[2];
  char		t2[2];

  memcpy(t1, t2, -10);
  printf("%s - %s", t1, t2);
  return 0;
}
