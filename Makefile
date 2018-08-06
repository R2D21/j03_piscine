NAME	=	bin/day02

RM	=	rm -fr

CC	=	/usr/bin/gcc

CFLAGS	=	-I /usr/include/ -I includes/ -W -Wall -Werror -pedantic -std=gnu99

GFLAGS	=	-I /usr/include/ -I includes/-faggressive-loop-optimizations -g3 -ggdb -W -Wall -Werror -pedantic -std=gnu99

LS		=	/bin/ls

GREP	=	/usr/bin/grep

NORMINETTE = norminette -R CheckForbiddenSourceHeader

NORME =  sh clean && $(LS) * | $(GREP) a.out | $(RM) && $(NORMINETTE) | $(GREP) ft*

SRCS	=	main.c \
		ex00/ft_ft.c \
		ex01/ft_ultimate_ft.c \
		ex02/ft_swap.c \
		ex03/ft_div_mod.c \
		ex04/ft_ultimate_div_mod.c \
		ex05/ft_putstr.c \
		ex06/ft_strlen.c \
		ex07/ft_strrev.c \
		puts.c \

OBJS	=	$(SRCS:.c=.o)

ECHO	=	echo -e

all	:	$(NAME)

$(NAME)	:	$(OBJS)

		$(CC)  $(CFLAGS) $(OBJS) -o $(NAME)

clean	:

		$(RM) $(OBJS)

fclean	:	$(clean)
		$(RM) $(NAME)
		$(RM) */*.*~

re	:	fclean all

debug	:	$(OBJS)

		$(RM) $(NAME)
		$(CC)  $(GFLAGS) $(OBJS) -o $(NAME)
		$(RM) $(OBJS)

norme	:	$(NAME)
			$(NORME)
.PHONY	: all clean fclean re