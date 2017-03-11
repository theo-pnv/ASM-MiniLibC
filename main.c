#include 	<stdio.h>
#include 	<unistd.h>

extern size_t	_strlen(const char *);
extern void 	display();
extern char	*_strchr(const char *, int c);
extern char	*_rindex(const char *, int c);

int		main()
{
  const char	*s = "salutations !\n";
  char		*ret;

  ret = _strchr(s, 's');
  printf("%s", !ret ? "NULL" : ret);
  ret = _rindex(s, 's');
  printf("%s", !ret ? "NULL" : ret);
  return (_strlen(s));
}
