#include <stdio.h>

extern void	*memcpy(void *, const void *, size_t);

int		main()
{
  char		t1[2] = "OK";
  char		t2[2] = "KO";

  memcpy(t1, t2, 1000);
  printf("%s - %s", t1, t2);
  return 0;
}
