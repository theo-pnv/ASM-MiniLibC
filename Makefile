##
## Makefile for minilibc in /home/theo/Projects/Assembly/asm_minilibc/
##
## Made by Theo Penavaire
## Login   <theo.penavaire@epitech.eu>
##
## Started on  Thu Mar  9 10:05:45 2017 Theo Penavaire
## Last update Thu Mar  9 10:37:04 2017 Theo Penavaire
##

NASM	=	nasm
CC	=	gcc
CFLAGS	=	-f elf64
NAME	=	libasm.so

SRCS	=	strlen.asm

OBJS	=	$(SRCS:.asm=.o)

all	:	$(NAME)

$(NAME)	:
		nasm -f elf64 strlen.asm
		$(CC) -shared $(OBJS) -o $(NAME)

clean	:
		$(RM) $(OBJS)

fclean	:	clean
		$(RM) $(NAME)

re	:	fclean all

.PHONY	:	all clean fclean re
