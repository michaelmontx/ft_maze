CC = cc
CFLAGS = -Wall -Wextra -Werror -I $(INCLUDES)
NAME = result

DIR = src/
INCLUDES = includes/

SRC = \
	$(DIR)main.c \
	$(DIR)ft_strlen.c \
	$(DIR)ft_strcpy.c 

OBJ = $(SRC:%.c=%.o)



all: $(NAME)

$(NAME): $(OBJ)
	@$(CC) $(CFLAGS) $(OBJ) -o $(NAME)
	@echo "\033[0;32m [] Compilation en cours.... \033[0m"
	@echo "\033[0;33m [] nom du fichier: '$(NAME)' \033[0m"
	@echo "\033[0;32m    [ COMPILATION REUSSI ] \033[0m"

clean:
	@echo "\033[0;31m [X] Supression des fichiers binaires... \033[0m"
	@rm -f $(OBJ)
	@echo "\033[0;32m [ NETTOYAGE REUSSI ] \033[0m"

fclean:
	@echo "\033[0;33m [ FCLEAN ]"
	@echo "\033[0;31m [X] Supression des fichiers binaires... \033[0m"
	@rm -f $(OBJ)
	@echo "\033[0;31m [X] Supression des fichiers .a .... \033[0m"
	@rm -f $(NAME)
	@echo "\033[0;32m [ NETTOYAGE REUSSI ] \033[0m"

re: fclean all

bonus:
	@echo "\033[0;31m Impossible, ft_maze pas encore fait. \033[0m"
