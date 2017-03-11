#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

int	main()
{
  int	fd;
  char	*s;

  s = malloc(1000000);
  fd = open("giant.txt", O_RDONLY);
  read(fd, s, 1000000);
  printf("%lu\n", strlen(s));
  free(s);
}
