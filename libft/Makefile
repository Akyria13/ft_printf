
########################################################################################################################
#                                                      VARIABLES                                                       #
########################################################################################################################\

NAME = 				libft.a
HEAD = 				../include/libft.h

AR = 				ar rcs
RM = 				rm -f

CC = 				cc
CFLAGS = 			-Wall -Wextra -Werror

SRC = \
					ft_atoi.c \
					ft_bzero.c \
					ft_calloc.c \
					ft_isalnum.c \
					ft_isalpha.c \
					ft_isascii.c \
					ft_isdigit.c \
					ft_isprint.c \
					ft_memchr.c \
					ft_memcmp.c \
					ft_memcpy.c \
					ft_memmove.c \
					ft_memset.c \
					ft_strchr.c \
					ft_strdup.c \
					ft_strlcat.c \
					ft_strlcpy.c \
					ft_strlen.c \
					ft_strncmp.c \
					ft_strnstr.c \
					ft_strrchr.c \
					ft_tolower.c \
					ft_toupper.c \
					ft_substr.c \
					ft_strjoin.c \
					ft_strtrim.c \
					ft_split.c \
					ft_itoa.c \
					ft_strmapi.c \
					ft_striteri.c \
					ft_putchar_fd.c \
					ft_putstr_fd.c \
					ft_putendl_fd.c \
					ft_putnbr_fd.c
SRC_BONUS = \
					ft_lstnew.c \
					ft_lstadd_front.c \
					ft_lstsize.c \
					ft_lstlast.c \
					ft_lstadd_back.c \
					ft_lstdelone.c \
					ft_lstclear.c \
					ft_lstiter.c \
					ft_lstmap.c

OBJS = 				$(SRC:%.c=$(OBJ_DIR)%.o)
OBJS_BONUS = 		$(SRC_BONUS:%.c=$(OBJ_DIR)%.o)


########################################################################################################################
#                                                      DIRECTORY                                                       #
########################################################################################################################

OBJ_DIR = obj/

########################################################################################################################
#                                                       COMMANDS                                                       #
########################################################################################################################

$(NAME) : 			$(OBJS) Makefile
					@printf "%-50b%b" "\n$(YELLOW)[$(NAME)] :$(RESET)" "\n"
					@printf "%-50b%b" "=> $(BOLD_GREEN)Created$(RESET)" "$(BOLD_GREEN)[✓]$(RESET)\n"
					@$(AR) $@ $^

$(OBJ_DIR)%.o:		%.c $(HEAD) | $(OBJ_DIR)
					$(CC) $(CFLAGS) -I. -o $@ -c $<

$(OBJ_DIR) :
					@printf "%-50b%b" "$(YELLOW)[libft/$(OBJ_DIR)] :$(RESET)" "\n"
					@printf "%-50b%b" "=> $(BOLD_GREEN)Created$(RESET)" "$(BOLD_GREEN)[✓]$(RESET)\n"
					@mkdir -p $(OBJ_DIR)

########################################################################################################################
#                                                      TARGETS                                                         #
########################################################################################################################

all : 				$(NAME)

bonus: 				$(OBJS) $(OBJS_BONUS)
					@echo "=> $(BOLD_GREEN)Creating $(REEN)$(NAME) with bonus$(RESET)"
					@$(AR) $(NAME) $^
clean :
#					@echo "=> $(BOLD_RED)Deleting $(COLOUR_RED)folder 'obj'$(RESET)"
					@$(RM) -rf $(OBJ_DIR)

fclean : 			clean
					@printf "%-50b%b" "=> $(BOLD_RED)Clean$(RESET)" "$(BOLD_GREEN)[✓]$(RESET)\n"
					@$(RM) $(NAME)

re : 				fclean all

.PHONY : 			all bonus clean fclean re

YELLOW			:=		\033[1;93m
GREEN 			:=		\033[0;32m

########################################################################################################################
#                                                      DISPLAY                                                         #
########################################################################################################################

MAGENTA			:=		\033[0;95m
YELLOW			:=		\033[1;93m
GREEN 			:=		\033[0;32m
RED 			:=		\033[0;31m

BOLD_GREEN		:= 		\e[1;32m
BOLD_RED 		:=		\e[1;31m

RESET 			:=		\033[0m
