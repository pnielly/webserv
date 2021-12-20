# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pnielly <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/10 20:59:10 by pnielly           #+#    #+#              #
#    Updated: 2021/12/20 02:05:38 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#----- Executables
SERVER=server
CLIENT=client

#----- Commands
CC=clang++
FLAGS=-Wall -Wextra -Werror -std=c++98

#----- SRCS
SERVER_SRC=server.cpp
CLIENT_SRC=client.cpp

#----- INC
INC=$(wildcard *.hpp)

#----- OBJS
OBJS=$(SRCS:.c=.o)

#Colors
BLACK:="\033[1;30m"
RED:="\033[1;31m"
GREEN:="\033[1;32m"
PURPLE:="\033[1;35m"
CYAN:="\033[1;36m"
WHITE:="\033[1;37m"
EOC:="\033[0;0m"

# ---------- Rules
all: $(SERVER) $(CLIENT)

$(SERVER):
	$(CC) $(FLAGS) -I $(INC) $(SERVER_SRC) -o $(SERVER)

$(CLIENT):
	$(CC) $(FLAGS) -I $(INC) $(CLIENT_SRC) -o $(CLIENT)

clean:
	@rm -rf $(OBJS) 

fclean: clean
	@rm -rf ${CLIENT} ${SERVER}
	
re: fclean all

.PHONY: all clean fclean re
