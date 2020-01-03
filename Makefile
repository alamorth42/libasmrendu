# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamorth <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/03 16:25:53 by alamorth          #+#    #+#              #
#    Updated: 2020/01/03 17:25:03 by alamorth         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_memcpy.s\
       		ft_strlen.s\
		ft_strcpy.s\
		ft_strcmp.s\
		ft_write.s\
		ft_read.s\
		ft_strdup.s\

OBJ = $(SRCS:.s=.o)
NAME= libasm.a

all: $(NAME)

.s.o:
	nasm -f macho64 $< -o $@

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)


clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
