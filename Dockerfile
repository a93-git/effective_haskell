FROM haskell:9.8-slim

WORKDIR /app
RUN echo ':set prompt "λ "' > $HOME/.ghci

CMD /bin/bash