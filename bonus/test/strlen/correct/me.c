#include <stdio.h>
#include <unistd.h>

extern size_t	strlen(const char *);

int		main()
{
  const char	*s = "Salut !";

  printf("%lu\n", strlen(s));
  return 0;
}
