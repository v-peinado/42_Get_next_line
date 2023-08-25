# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vpeinado <vpeinado@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/03 14:27:33 by vpeinado          #+#    #+#              #
#    Updated: 2023/03/22 18:22:50 by vpeinado         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS  		= get_next_line.c get_next_line_utils.c
								
OBJS		= $(SRCS:.c=.o)

CC			= gcc
RM			= rm -fr
CFLAGS		= -Wall -Wextra -Werror

NAME		= gnl.a

all: 		$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
					$(RM) $(OBJS)

fclean:				clean 
						$(RM) $(NAME)

re:					fclean $(NAME)

.PHONY:				all clean fclean re 