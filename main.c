extern unsigned int	_strlen(const char *);
extern void 		display();

int	main()
{
  const char *s = "Salut !\n";

  display(s);
  return (_strlen(s));
}
