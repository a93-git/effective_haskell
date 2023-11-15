FROM alpine

WORKDIR /app

RUN apk update 
RUN apk add curl expect binutils-gold curl gcc g++ gmp-dev libc-dev libffi-dev make musl-dev ncurses-dev perl tar xz vim
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

RUN echo ':set prompt "λ "' > $HOME/.ghci

CMD /bin/sh