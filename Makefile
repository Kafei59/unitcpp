## 
## @Author: gicque_p
## @Date:   2015-01-17 00:21:10
## @Last Modified by:   gicque_p
## @Last Modified time: 2015-01-17 00:43:30
##

CXX		=	g++
CXXFLAGS=	-W -Wall -Wextra
RM		=	rm -rf
NAME	=	tests

SRC		=	UnitTests.cpp

OBJ		=	$(SRC:.cpp=.o)

all:		$(NAME)

$(NAME):	$(OBJ)
	$(CXX) $(OBJ) -o $(NAME) $(CXXFLAGS)

clean:
	$(RM) $(OBJ)

fclean:		clean
	$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
