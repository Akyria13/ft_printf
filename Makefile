########################################################################################################################
#                                                      VARIABLES                                                       #
########################################################################################################################\

AUTHOR			:=		jowagner
NAME			:= 		libftprintf.a

AR				:= 		ar -rcs
RM				:= 		rm -f
CC				:= 		cc
CFLAGS			:= 		-Wall -Wextra -Werror

SRC				:=		ft_printf.c \

########################################################################################################################
#                                                      DIRECTORY                                                       #
########################################################################################################################

HEAD			:=		include/ft_printf.h
INC_PATH		:=		include/.
SRC_PATH		:=		src/
OBJ_DIR			:= 		obj/
LIBFT_DIR		:=		libft/
LIBFT			:= 		$(LIBFT_DIR)libft.a

OBJS			:= 		$(SRC:%.c=$(OBJ_DIR)%.o)

########################################################################################################################
#                                                      TARGETS                                                         #
########################################################################################################################

all : 					.print_header lib $(NAME)

lib :
							@$(MAKE) --silent -C $(LIBFT_DIR)

clean :					.print_header
							@printf "%-50b%b" "$(YELLOW)[ft_printf/$(OBJ_DIR)] :$(RESET)" "\n"
							@$(RM) -rf $(OBJ_DIR)
							@printf "%-50b%b" "=> $(BOLD_RED)Clean$(RESET)" "$(BOLD_GREEN)[✓]$(RESET)\n"
							@printf "\n"
							@printf "%-50b%b" "$(YELLOW)[$(LIBFT_DIR)obj] :$(RESET)" "\n"
							@$(MAKE) --silent -C $(LIBFT_DIR) clean
							@printf "%-50b%b" "=> $(BOLD_RED)Clean$(RESET)" "$(BOLD_GREEN)[✓]$(RESET)\n"
							@printf "\n"

fclean : 				clean
							@printf "%-50b%b" "$(YELLOW)[$(NAME)] :$(RESET)" "\n"
							@$(RM) $(NAME)
							@printf "%-50b%b" "=> $(BOLD_RED)Clean$(RESET)" "$(BOLD_GREEN)[✓]$(RESET)\n"
							@printf "\n"
							@printf "%-50b%b" "$(YELLOW)[$(NAME)] :$(RESET)" "\n"
							@$(MAKE) --silent -C $(LIBFT_DIR) fclean
							$(call SEPARATOR)

re : 					.print_header fclean all $(LIBFT) $(NAME)

.print_header :
							$(call TITLE)
							$(call SEPARATOR)
							$(call BUILD)
							$(call SEPARATOR)

.PHONY : 				all bonus clean fclean re

########################################################################################################################
#                                                       COMMANDS                                                       #
########################################################################################################################


$(NAME) 		: 		$(OBJ_DIR) $(OBJS) $(LIBFT_DIR) Makefile
						@printf "%-50b%b" "\n$(YELLOW)[$(NAME)] :$(RESET)" "\n"
						@printf "%-50b%b" "=> $(BOLD_GREEN)Created$(RESET)" "$(BOLD_GREEN)[✓]$(RESET)\n"
						@$(AR) -o $(NAME) $(OBJS)
						$(call SEPARATOR)

$(OBJ_DIR)		:
						@printf "%-50b%b" "\n$(YELLOW)[ft_printf/$(OBJ_DIR)] :$(RESET)" "\n"
						@printf "%-50b%b" "=> $(BOLD_GREEN)Created$(RESET)" "$(BOLD_GREEN)[✓]$(RESET)\n"
						@mkdir -p $(OBJ_DIR)


$(OBJS) 		:		$(OBJ_DIR)%.o:$(SRC_PATH)%.c $(HEAD)
						@$(CC) $(CFLAGS) -I$(INC_PATH) -I$(LIBFT_DIR)$(INC_PATH) -c $< -o $@



########################################################################################################################
#                                                      DISPLAY                                                         #
########################################################################################################################

MAGENTA			:=		\033[0;95m
YELLOW			:=		\033[1;93m
GREEN 			:=		\033[0;32m
BLUE			:=		\033[0;94m
RED 			:=		\033[0;31m

BOLD_GREEN		:= 		\e[1;32m
BOLD_RED 		:=		\e[1;31m
test =	\e[1;37m
test1 = \e[1;36m

RESET 			:=		\033[0m

define	TITLE
						@echo "$(MAGENTA)---------------------------------------------------$(RESET)";
						@echo "$(BOLD_GREEN)   __ _                   _       _    __ "
						@echo "$(BOLD_GREEN)  / _| |_      _ __  _ __(_)_ __ | |_ / _|"
						@echo "$(BOLD_GREEN) | |_| __|    | '_ \| '__| | '_ \| __| |_ "
						@echo "$(BOLD_GREEN) |  _| |_     | |_) | |  | | | | | |_|  _|"
						@echo "$(BOLD_GREEN) |_|  \__|____| .__/|_|  |_|_| |_|\__|_|  "
						@echo "$(BOLD_GREEN)        |_____|_|                         "
endef

define	BUILD
						@printf "%-40b%b" "$(test1)AUTHOR :$(RESET)" "$(test)$(AUTHOR)$(RESET)\n";
						@printf "%-40b%b" "$(test1)NAME :$(RESET)" "$(test)$(NAME)$(RESET)\n";
						@printf "%-40b%b" "$(test1)CC :$(RESET)" "$(test)$(CC)$(RESET)\n";
						@printf "%-40b%b" "$(test1)FLAGS :$(RESET)" "$(test)$(CFLAGS)$(RESET)\n";
endef

define	SEPARATOR
						@printf "\n"
						@echo "$(MAGENTA)---------------------------------------------------$(RESET)";
						@printf "\n"
endef
