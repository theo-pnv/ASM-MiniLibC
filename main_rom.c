#include 	<stdio.h>
#include 	<unistd.h>
#include	<string.h>

extern size_t	_strlen(const char *);
extern void 	display();
extern char	*_strchr(const char *, int c);
extern char	*_rindex(const char *, int c);
extern int	strncmp(const char *s1, const char *s2, size_t n);
extern int	_strcasecmp(const char *s1, const char *s2);


int		main()
{
  const char	*s1 = "OKuhKh";
  const char	*s2 = "okUHUH";

  printf("le mien = %d\n", _strcasecmp(s1, s2));
  printf("systeme = %d\n", strcasecmp(s1, s2));
  return (0);
}
