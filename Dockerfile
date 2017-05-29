FROM mileschou/lapis:alpine

RUN luarocks install lapis-console
ADD . .
RUN moonc *.moon

EXPOSE 8000
