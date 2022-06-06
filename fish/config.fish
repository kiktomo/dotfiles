# rbenv
if type -q rbenv
  set -x RBENV_ROOT $HOME/.rbenv
  set -x PATH $RBENV_ROOT/bin $PATH
  set -x PATH $RBENV_ROOT/shims $PATH
  status --is-interactive; and source (rbenv init -|psub)
end

# nodenv
if type -q nodenv
  status --is-interactive; and source (nodenv init -|psub)
end

# node
set x PATH "./node_modules/.bin" $PATH

switch (uname)
case Linux
case Darwin
  # gcp
  set -x PATH "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin" $PATH
  # alias
  alias rm='rmtrash'
case FreeBSD NetBSD DragonFly
case '*'
end

alias vi='code'

# direnv
direnv hook fish | source
