#include <stdio.h>
#include <string.h>

int		main()
{
  char		a[7] = "victor\0";
  char		b[11] = "yo victor!\0";

  printf("%s - %s = %s\n", a, b, strstr(b, a));
}
