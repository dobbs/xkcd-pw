FROM alpine:3.5

ENV XKCD_URL=https://xkcd.com/936/
ENV WORDS_SOURCE=https://github.com/first20hours/google-10000-english
ENV WORDS_FILE=/etc/google-10000-english-usa-no-swears-medium-long.txt
RUN apk update \
 && apk add coreutils outils-jot curl \
 && BASE_URL=https://raw.githubusercontent.com/first20hours/google-10000-english/master/google-10000-english-usa-no-swears \
 && curl -sS $BASE_URL-medium.txt > $WORDS_FILE \
 && curl -sS $BASE_URL-long.txt >> $WORDS_FILE \
 && apk del curl
ADD https://raw.githubusercontent.com/dobbs/xkcd-pw/master/four-random-words /usr/local/bin
RUN chmod +x /usr/local/bin/four-random-words
CMD ["sh", "-c", "seq ${COUNT:-5} | xargs -I% four-random-words"]
