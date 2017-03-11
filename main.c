#include 	<stdio.h>
#include 	<unistd.h>

extern size_t	strlen(const char *);
extern void 	display();
extern char	*strchr(const char *, int c);
extern char	*rindex(const char *, int c);

int		main()
{
  const char	*s = "salutations !\n";
  char		*ret;

  ret = strchr(s, 's');
  printf("%s", !ret ? "NULL" : ret);
  ret = rindex(s, 's');
  printf("%s", !ret ? "NULL" : ret);
  return (strlen(s));
}
