#include <stdio.h>
#include <string.h>

typedef struct	s
{
  char		byte[3];
  int		i;
  void		*ptr;
}		t;

int		main()
{
  t		t1, t2;

  t1.byte[0] = 'O';
  t1.byte[1] = 'K';
  t1.byte[2] = '\0';
  memmove(&t2, &t1, sizeof(t));
  printf("%s - %s\n", t1.byte, t2.byte);
  return 0;
}
