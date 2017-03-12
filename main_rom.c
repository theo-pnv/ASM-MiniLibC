#include 	<stdio.h>
#include 	<unistd.h>
#include	<string.h>

extern size_t	_strlen(const char *);
extern void 	display();
extern char	*_strchr(const char *, int c);
extern char	*_rindex(const char *, int c);
extern int	strncmp(const char *s1, const char *s2, size_t n);

int		main()
{
  const char	*s1 = "bonjour";
  const char	*s2 = "bonjour";

  printf("le mien = %d\n", strncmp(s1, s2, 5));
  return (0);
}
