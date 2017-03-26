#include <stdio.h>

extern void	*memmove(void *, const void *, size_t);

int		main()
{
  char		t1[14] = "Hello World !\n";
  char		t2[14] = "C'est haram !\n";

  printf("Before memmove: %s - %s", t1, t2);
  memmove(t1, t2, 0);
  printf("After memmove: %s - %s", t1, t2);
  return 0;
}
