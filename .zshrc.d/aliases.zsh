#!/bin/zsh
#
# .aliases - Set whatever shell aliases you want.
#

# url encode/decode
alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print (ul.quote_plus(sys.argv[1]))"'

# this style of dotfiles management only needed on workspaces, so scope to linux
if [[ $OSTYPE == linux* ]]; then
  alias dotfiles='git -c core.fsmonitor=false --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
fi
