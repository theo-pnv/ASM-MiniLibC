#include <stdio.h>
#include <string.h>

typedef struct	s
{
  char		byte[8];
  int		i;
  void		*ptr;
}		t;

int		main()
{
  t		test;

  memset(&test, 0, sizeof(t));
  for (int i = 0; i < 8; i++) {
    if (test.byte[i] != 0) {
      printf("FAIL\n");
    }
  }
}
