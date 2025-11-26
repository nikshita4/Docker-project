FROM alpine:latest

LABEL maintainer="beginner@student.com"

RUN apk update && apk add --no-cache \
    curl \
    wget \
    bash

WORKDIR /app

RUN echo "Hello World! I'm learning Docker!" > welcome.txt

CMD ["/bin/bash", "-c", "echo '=== WELCOME TO YOUR FIRST CONTAINER ===' && \
                         echo 'You are now inside a Linux system!' && \
                         echo 'Type: ls -la     to see files' && \
                         echo 'Type: cat welcome.txt   to read the welcome file' && \
                         echo 'Type: exit      to leave' && \
                         /bin/bash"]