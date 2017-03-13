#include 	<stdio.h>
#include 	<unistd.h>

extern size_t	strlen(const char *);
extern void 	display();
extern char	*strchr(const char *, int c);
extern char	*rindex(const char *, int c);
extern void	*memset(void *, int, size_t);
extern void	*memcpy(void *, const void *, size_t);
extern void	*_memmove(void *, const void *, size_t);

int		main()
{
  char array[100] = "Geeks for geeks";

  memcpy( (void*) &array[0], (void*) &array[1], 100 - 1 );

  printf("After using mem* %s\n", array);

  return 0;
}
