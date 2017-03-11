#include 	<stdio.h>
#include 	<unistd.h>

extern size_t	_strlen(const char *);
extern void 	display();
extern char	*_strchr(const char *, int c);

int	main()
{
  const char *s = "Salut !\n";

  // printf("%s\n", _strchr(s, 'a'));
  return (_strlen(s));
}
