#include 	<stdio.h>
#include 	<unistd.h>
#include	<string.h>

extern size_t	_strlen(const char *);
extern void 	display();
extern char	*_strchr(const char *, int c);
extern char	*_rindex(const char *, int c);
extern int	strncmp(const char *s1, const char *s2, size_t n);
extern int	_strcasecmp(const char *s1, const char *s2);
extern char	*_strstr(const char *haystack, const char *needle);
extern size_t	_strcspn(const char *s, const char *accept);

int		main()
{
  const char	*s1 = "abcdef";
  const char	*s2 = "fed";

  printf("le mien = %zu\n", _strcspn(s1, s2));
  printf("systeme = %zu\n", strcspn(s1, s2));
  return (0);
}
