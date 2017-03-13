##
## Makefile for minilibc in /home/theo/Projects/Assembly/asm_minilibc/
##
## Made by Theo Penavaire
## Login   <theo.penavaire@epitech.eu>
##
## Started on  Thu Mar  9 10:05:45 2017 Theo Penavaire
## Last update Mon Mar 13 23:28:41 2017 Theo Penavaire
##

NASM	=	nasm -f elf64
LD	=	ld -shared -g
CC	=	gcc
NAME	=	libasm.so

DIR	=	../

SRCS	=	${DIR}strlen.asm	\
		${DIR}strchr.asm	\
		${DIR}rindex.asm	\
		${DIR}strcmp.asm	\
		${DIR}memset.asm	\
		${DIR}memcpy.asm	\
		${DIR}memmove.asm	\
		${DIR}strncmp.asm	\
		${DIR}strcasecmp.asm	\
		${DIR}strstr.asm	\
		${DIR}strcspn.asm	\
		${DIR}strpbrk.asm	\
		tolower.asm		\
		toupper.asm

OBJS	=	$(SRCS:.asm=.o)

all	:	$(NAME)

$(NAME)	:
		@for i in $(SRCS); do $(NASM) $$i; done
		$(LD) -o $(NAME) $(OBJS)

clean	:
		$(RM) $(OBJS)

fclean	:	clean
		$(RM) $(NAME)

re	:	fclean all

.PHONY	:	all clean fclean re
