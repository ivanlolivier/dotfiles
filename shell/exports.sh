export GEM_HOME="$HOME/.gem"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)

YARN_HOME="$HOME/.yarn"
BREW="/opt/homebrew"
MYSQL="/usr/local/mysql"

export path=(
  "$BREW/bin"
  "$BREW/sbin"
  "$HOME/bin"
  "/usr/bin"
  "/usr/sbin"
  "/usr/local/bin"
  "/bin"
  "/sbin"
  "$DOTLY_PATH/bin"
  "$DOTFILES_PATH/bin"
  "$JAVA_HOME/bin"
  "$MYSQL/bin"
  "$YARN_HOME/bin"
  "/Applications/Postgres.app/Contents/Versions/13/bin"
  "$ANDROID_SDK_ROOT/emulator"
  "$ANDROID_SDK_ROOT/platform-tools"
  "$JAVA_HOME"
  "$JAVA_HOME/bin"
  "$GEM_HOME/bin"
  "/usr/local/opt/ruby/bin"
  "/usr/local/opt/python/libexec/bin"
)

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

export FZF_DEFAULT_OPTS='
  --color=pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934
  --reverse
'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
