#include 	<stdio.h>
#include 	<unistd.h>

extern size_t	_strlen(const char *);
extern void 	display();
extern char	*_strchr(const char *, int c);

int		main()
{
  const char	*s = "Salut !\n";
  char		*ret;

  ret = _strchr(s, 'r');
  printf("%s", !ret ? "NULL" : ret);
  return (_strlen(s));
}
