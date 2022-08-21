# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: panand <panand@student.42kl.edu.my>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/15 23:08:46 by panand            #+#    #+#              #
#    Updated: 2022/07/24 19:46:47 by panand           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libft.a
CC 			= 	gcc
FLAGS 		= 	-Wall -Wextra -Werror -c
AR			= 	ar rcs

SRCS_DIR	=	src/
SRCS		= 	ft_atoi \
				ft_bzero \
				ft_calloc \
				ft_isalnum \
				ft_isalpha \
				ft_isascii \
				ft_isdigit \
				ft_isprint \
				ft_memchr \
				ft_memcpy \
				ft_memcmp \
				ft_memmove \
				ft_memset \
				ft_strchr \
				ft_strdup \
				ft_strjoin \
				ft_strlcat \
				ft_split \
				ft_putchar_fd \
				ft_putendl_fd \
				ft_putnbr_fd \
				ft_putstr_fd \
				ft_itoa \
				ft_strmapi \
				ft_striteri \
				ft_strlcpy \
				ft_strlen \
				ft_strncmp \
				ft_strnstr \
				ft_strrchr \
				ft_strtrim \
				ft_substr \
				ft_toupper \
				ft_tolower \
SRC_FILES+=$(addprefix $(SRCS_DIR),$(SRCS))

SRCS	=	$(addprefix $(SRCS_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJS	=	$(addprefix $(OBJS_DIR), $(addsuffix .o, $(SRC_FILES)))

all:		$(NAME)

$(NAME):	$(OBJS)
			$(AR) $(NAME) $(OBJS)

$(OBJS_DIR)%.o	:	$(SRCS_DIR)%.c libft.h
					$(CC) $(FLAGS) -c $< -o $@

clean:
			rm -f $(OBJS_DIR)

fclean:		clean
			rm -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re