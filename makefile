# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: panand <panand@student.42kl.edu.my>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/15 23:08:46 by panand            #+#    #+#              #
#    Updated: 2022/06/15 23:08:49 by panand           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libft.a

CC 			= 	gcc
FLAGS 		= 	-Wall -Wextra -Werror -c
AR			= 	ar rcs

FILES		= 	ft_atoi.c \
				ft_bzero.c \
				ft_calloc.c \
				ft_isalnum.c \
				ft_isalpha.c \
				ft_isascii.c \
				ft_isdigit.c \
				ft_isprint.c \
				ft_memchr.c \
				ft_memcpy.c \
				ft_memcmp.c \
				ft_memmove.c \
				ft_memset.c \
				ft_strchr.c \
				ft_strdup.c \
				ft_strjoin.c \
				ft_strlcat.c \
				ft_split.c \
				ft_putchar_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c \
				ft_putstr_fd.c \
				ft_itoa.c \
				ft_strmapi.c \
				ft_striteri.c \
				ft_strlcpy.c\
				ft_strlen.c \
				ft_strncmp.c \
				ft_strnstr.c \
				ft_strrchr.c \
				ft_strtrim.c \
				ft_substr.c \
				ft_toupper.c \
				ft_tolower.c \


OBJS		=	$(FILES:.c=.o)


$(NAME):	$(OBJS)
			$(CC) $(FLAGS) $(FILES)
			$(AR) $(NAME) $(OBJS)

all:		$(NAME)

clean:
			rm -f $(OBJS)

fclean:		clean
			rm -f $(NAME)

re:			clean all

.PHONY:		all clean fclean re
