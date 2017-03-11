##
## Makefile for minilibc in /home/theo/Projects/Assembly/asm_minilibc/
##
## Made by Theo Penavaire
## Login   <theo.penavaire@epitech.eu>
##
## Started on  Thu Mar  9 10:05:45 2017 Theo Penavaire
## Last update Sat Mar 11 21:57:37 2017 Theo Penavaire
##

NASM	=	nasm -f elf64
LD	=	ld -shared -g
CC	=	gcc
NAME	=	libasm.so

SRCS	=	strlen.asm	\
		strchr.asm	\
		rindex.asm	\
		strcmp.asm	\
		memset.asm

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
