FROM ubuntu:latest

RUN apt update && apt install -y curl apt-transport-https

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash 
RUN su root 
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 20 

COPY app.js .

CMD [ "node", "./app.js" ]
