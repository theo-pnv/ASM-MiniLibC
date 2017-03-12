#include <stdio.h>

extern void	*memset(void *, int, size_t);

int		main()
{
  char		test[2];

  memset(test, 'a', -10);
  printf("%s", test);
  return 0;
}
