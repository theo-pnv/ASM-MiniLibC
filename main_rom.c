#include 	<stdio.h>
#include 	<unistd.h>
#include	<string.h>

extern size_t	_strlen(const char *);
extern void 	display();
extern char	*_strchr(const char *, int c);
extern char	*_rindex(const char *, int c);
extern int	_strcmp(const char *s1, const char *s2);

int		main()
{
  const char	*s1 = "s";
  const char	*s2 = "w";

  printf("le mien = %d\n", _strcmp(s1, s2));
  printf("systeme = %d\n", strcmp(s1, s2));
  return (0);
}
