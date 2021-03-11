FROM node:latest
RUN useradd hubot
RUN mkdir -p /home/hubot/.npm
RUN chown -R 1001:1001 "/home/hubot/.npm"
USER hubot
WORKDIR /home/hubot

RUN npm install -g yo hubot generator-hubot hubot-discord

COPY . .

CMD ["bin/hubot -a discord"]
