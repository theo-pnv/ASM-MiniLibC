#include <stdio.h>

extern void	*memmove(void *, const void *, size_t);
extern void	*memcpy(void *, const void *, size_t);

int		main()
{
  char a[16] = "abcdefghijklmno\0";
  char b[16] = "abcdefghijklmno\0";

  memcpy(&a[0], &a[1], 4);
  printf("%s\n", a);
  memmove(&b[0], &b[1], 10);
  printf("%s\n", b);
  return 0;
}
