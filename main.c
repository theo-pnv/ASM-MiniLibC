#include 	<stdio.h>
#include 	<unistd.h>

extern size_t	strlen(const char *);
extern void 	display();
extern char	*strchr(const char *, int c);
extern char	*rindex(const char *, int c);
extern void	*memset(void *, int, size_t);
extern void	*memcpy(void *, const void *, size_t);

int		main()
{
  char		s1[5] = "Hello";
  const char	s2[5] = "Allah";

  strlen(s2);
  printf("Before using memset %s\n", s1);
  memset(s1, 'a', 3);
  printf("After using memset %s - %s\n", s1, s2);
  memcpy(s1, s2, 2);
  printf("After using memcpy %s - %s\n", s1, s2);

  return 0;
}
