Fankserver Bash
===============

Install latest git alias
```bash
curl -s https://raw.githubusercontent.com/Fankserver/bash/master/gitconfig_alias >> ~/.gitconfig
```

Remove alias
```bash
perl -0 -p -i -e "s/^\[alias\].+//sm" ~/.gitconfig
```
