# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amounach <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/14 18:10:44 by amounach          #+#    #+#              #
#    Updated: 2021/12/08 00:02:40 by amounach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Wextra -Werror
CRT := ar -crs
REMOVE := rm -rf
INC = libft.h
CC = cc
SRCS = ft_atoi.c \
	  ft_bzero.c \
	  ft_calloc.c \
	  ft_memset.c \
	  ft_isalnum.c \
	  ft_isalpha.c \
	  ft_isascii.c \
	  ft_isdigit.c \
	  ft_isprint.c \
	  ft_memcpy.c \
	  ft_memmove.c \
	  ft_memchr.c \
	  ft_memcmp.c \
	  ft_memset.c \
	  ft_strchr.c \
	  ft_strdup.c \
	  ft_strlcat.c \
	  ft_strlcpy.c \
	  ft_strlen.c \
	  ft_substr.c \
	  ft_strrchr.c \
	  ft_tolower.c \
	  ft_toupper.c \
	  ft_putchar_fd.c \
	  ft_putendl_fd.c \
	  ft_putstr_fd.c \
	  ft_putnbr_fd.c \
	  ft_strjoin.c \
	  ft_strtrim.c \
	  ft_strncmp.c \
	  ft_strmapi.c \
	  ft_striteri.c \
	  ft_itoa.c \
	  ft_strnstr.c \
	  ft_split.c \



SRCSBONUS = ${SRCS} \
	ft_lstnew.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_front.c


OBJS = $(SRCS:.c=.o)

OBJSB = $(SRCSBONUS:.c=.o)

all: $(NAME)

bonus: $(OBJSB)
	$(CRT) $(NAME) $^

$(NAME): $(OBJS)
	$(CRT) $@ $^
%.o: %.c $(INC)
	cc $(FLAGS) -c $< -o $@

clean:
	$(REMOVE) $(OBJS) $(OBJSB)

fclean: clean
	$(REMOVE) $(NAME)

re: fclean all
