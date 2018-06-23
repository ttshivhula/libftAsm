# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ttshivhu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/23 15:08:38 by ttshivhu          #+#    #+#              #
#*   Updated: 2018/06/23 18:20:31 by ttshivhu         ###   ########.fr       *#
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
AS = nasm
ASFLAGS = -f macho64
SRC = $(wildcard *.s)

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
