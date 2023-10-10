NAME 		= libasm.a

SOURCES 	= $(shell find . -name "*.s")
OBJECTS 	= $(patsubst %.s, %.o, $(SOURCES))

NA			= nasm
NA_FLAGS	= -f macho64
CFLAGS 		= -Werror -Wall -Wextra -Wall

all: $(NAME)

%.o:	%.s
	$(NA) $(NA_FLAGS) $<

$(NAME): $(OBJECTS)
	@ar rcs $(NAME) $(OBJECTS)
	@echo "Compiled !"

test: all
	gcc main.c $(NAME) -o test
	./test

# $(PROGRAMM): $(OBJECTS)
# 	nasm -f macho64 -l main.lst  main.asm
# 	gcc -m64 -o programm  main.o

clean:
	-@$(RM) $(OBJECTS)
	@echo "Everything is Cleaned !"

fclean: clean
	-@$(RM) $(NAME)
	-@$(RM) test

re: clean all

.PHONY: re fclean clean all