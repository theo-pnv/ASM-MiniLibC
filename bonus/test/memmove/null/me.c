#include <stdio.h>

extern void	*memmove(void *, const void *, size_t);

int		main()
{
  printf("%s\n", memmove("", "", 20000));
  return 0;
}
