#include <stdio.h>
#include <string.h>

int		main()
{
  char		t1[14] = "Hello World !\n";
  char		t2[14] = "C'est haram !\n";

  printf("Before memset: %s - %s", t1, t2);
  memcpy(t1, t2, 7);
  printf("After memset: %s - %s", t1, t2);
  return 0;
}
