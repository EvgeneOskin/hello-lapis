FROM mileschou/lapis:alpine

ADD . .
RUN moonc *.moon

EXPOSE 8000
