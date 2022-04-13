# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init bash pre)"

export DOTFILES_PATH="/Users/ivan/.dotfiles"
export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"
export DOTLY_THEME="codely"

if [[ "$(ps -p $$ -ocomm=)" =~ (bash$) ]]; then
  __right_prompt() {
    RIGHT_PROMPT=""
    [[ -n $RPS1 ]] && RIGHT_PROMPT=$RPS1 || RIGHT_PROMPT=$RPROMPT
    if [[ -n $RIGHT_PROMPT ]]; then
      n=$(($COLUMNS - ${#RIGHT_PROMPT}))
      printf "%${n}s$RIGHT_PROMPT\\r"
    fi
  }
  export PROMPT_COMMAND="__right_prompt"
fi

source "$DOTFILES_PATH/shell/init.sh"

PATH=$(
  IFS=":"
  echo "${path[*]}"
)
export PATH

themes_paths=(
  "$DOTFILES_PATH/shell/bash/themes"
  "$DOTLY_PATH/shell/bash/themes"
)

for THEME_PATH in ${themes_paths[@]}; do
  THEME_PATH="${THEME_PATH}/$DOTLY_THEME.sh"
  [ -f "$THEME_PATH" ] && source "$THEME_PATH" && break
done

for bash_file in "$DOTLY_PATH"/shell/bash/completions/*; do
  source "$bash_file"
done

if [ -n "$(ls -A "$DOTFILES_PATH/shell/bash/completions/")" ]; then
  for bash_file in "$DOTFILES_PATH"/shell/bash/completions/*; do
    source "$bash_file"
  done
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/usr/local/mysql/bin:$PATH

# Fig post block. Keep at the bottom of this file.
eval "$(fig init bash post)"

