########################################################################################################################
#                                                      COLOURS                                                         #
########################################################################################################################

COLOUR_GREEN 	:=		\033[0;32m
BOLD_GREEN		:= 		\e[1;32m
COLOUR_RED 		:=		\033[0;31m
BOLD_RED 		:=		\e[1;31m
RESET 			:=		\033[0m

########################################################################################################################
#                                                      VARIABLES                                                       #
########################################################################################################################\

NAME			:= 		libftprintf.a
HEAD			:=		include/ft_printf.h

SRC_PATH		:=		src/
INC_PATH		:=		include/.
OBJ_DIR			:= 		obj/
LIBFT_DIR		:=		libft/
LIBFT			:= 		$(LIBFT_DIR)libft.a

AR				:= 		ar -rcs
RM				:= 		rm -f

CC				:= 		cc
CFLAGS			:= 		-Wall -Wextra -Werror

SRC				:=		ft_printf.c \

OBJS			:= 		$(SRC:%.c=$(OBJ_DIR)%.o)

########################################################################################################################
#                                                       COMMANDS                                                       #
########################################################################################################################


$(NAME) 		: 		$(OBJ_DIR) $(OBJS) $(LIBFT) Makefile
						@echo "=> $(BOLD_GREEN)Creating $(COLOUR_GREEN)$(NAME)$(RESET)"
						$(AR) -o $(NAME) $(OBJS)

$(OBJ_DIR)		:
						@echo "=> $(BOLD_GREEN)Creating $(COLOUR_GREEN)folder 'obj'$(RESET)"
						@mkdir -p $(OBJ_DIR)


$(OBJS) 		:		$(OBJ_DIR)%.o:$(SRC_PATH)%.c $(HEAD)
						$(CC) $(CFLAGS) -I$(INC_PATH) -c $< -o $@


########################################################################################################################
#                                                      TARGETS                                                         #
########################################################################################################################

all : 					lib $(NAME)

lib :
						@$(MAKE) --no-print-directory -C $(LIBFT_DIR)

clean :
						@echo "=> $(BOLD_RED)Cleaning $(COLOUR_RED)folder 'obj'$(RESET)"
						@$(RM) -rf $(OBJ_DIR)

fclean : 				clean
						@echo "=> $(BOLD_RED)Removing $(COLOUR_RED)$(NAME)$(RESET)"
						@$(RM) $(NAME)

re : 					fclean all

.PHONY : 				all bonus clean fclean re
