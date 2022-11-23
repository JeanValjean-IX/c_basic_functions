NAME =  libft.a

SRCS  = ft_memset.c \
		ft_isprint.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_strlen.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_bzero.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strncmp.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strnstr.c \
		ft_atoi.c \
		ft_calloc.c \
		ft_strdup.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \
		ft_putchar_fd.c

INCLUDE = include

OBJS = $(SRCS:.c=.o)

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME):
	@(gcc $(FLAGS) -c $(SRCS) -I $(INCLUDE))
	@(ar rc $(NAME) $(OBJS))
	@(ranlib $(NAME))

clean:
	@(rm -f $(OBJS))

fclean: clean
	@(rm -f $(NAME))

re: fclean all
