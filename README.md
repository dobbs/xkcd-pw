![xkcd: Password Strength](https://imgs.xkcd.com/comics/password_strength.png)
https://xkcd.com/936/

### Usage

Emits five (by default) random passphrases
``` bash
docker build --tag xkcd-password
docker run --rm xkcd-password
docker run --rm -e COUNT=8 xkcd-password
```

### Many Thanks:

* https://github.com/first20hours/google-10000-english
* http://unix.stackexchange.com/a/241199
* http://stackoverflow.com/questions/6022384/bash-tool-to-get-nth-line-from-a-file#comment34453410_6022431
