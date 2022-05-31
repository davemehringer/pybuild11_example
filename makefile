SRC = example.cc
CFLAG = -O3 -Wall -shared -std=c++11 -fPIC
INCLUDES = $(python3 -m pybind11 --includes)
CC = c++
OBJS = example$(python3-config --extension-suffix)

build:${OBJS}
	${CC} ${CFLAG} ${INCLUDES} ${SRC} -o ${OBBS}
