# Themes
set -g theme_nerd_fonts yes
set -g theme_powerline_fonts no
set -g theme_color_scheme dracula
set -g theme_short_path yes

# PATH

set -gx PATH /usr/local/bin  $PATH
set -gx PATH /usr/sbin  $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH $HOME/.local/bin $PATH
set -gx PATH $HOME/.jenv/bin $PATH

set -gx ANDROID_HOME /Users/tgelin01/Library/Android/sdk
set -gx ANDROID_SDK_ROOT /Users/tgelin01/Library/Android/sdk
set -gx ANDROID_SDK_HOME ~/Library/Android
set -gx GRADLE_USER_HOME ~/.gradle

set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/emulator $PATH
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH

set -gx PATH /Users/tgelin01/.asdf/installs/rust/1.70.0/bin $PATH



set -gx PATH /usr/bin:/bin:/usr/sbin:/sbin $PATH 
set -gx PATH /Users/tgelin01/.local/bin $PATH 

set -gx PATH /opt/homebrew/opt/llvm/bin $PATH

set -gx PATH $HOME/.maestro/bin $PATH

set -gx FLUTTER_ROOT $(asdf where flutter) 
set -gx PATH $(asdf where flutter)/bin $PATH

set -gx C_INCLUDE_PATH /opt/homebrew/Cellar/json-c/0.17/include/json-c $C_INCLUDE_PATH
set -gx LIBRARY_PATH /opt/homebrew/Cellar/json-c/0.17/lib $LIBRARY_PATH


set XDG_CONFIG_HOME $HOME/.config
set XDG_DATA_HOME $HOME/.local/share
set XDG_CACHE_HOME $HOME/.cache


set REACT_EDITOR nvim

# ALIAS
alias intel "arch -x86_64"

alias ls "exa -la --icons"
alias cat "bat"

alias vim "nvim"

alias gc "git co (git branch -a | fzf | awk '{\$1=\$1};1')"

alias emu "~/.config/scripts/emu"
alias simu "~/.config/scripts/simu"

alias systrace "$ANDROID_HOME/platform-tools/systrace/systrace.py --time=10 -o trace.html sched gfx view -a "

alias cleanmetro "rm -rf node_modules; yarn; watchman watch-del-all; rm -fr $TMPDIR/haste-map-*; rm -rf $TMPDIR/metro-cache; yarn start -- --reset-cache;"
alias reset "rm -rf node_modules; yarn; cd ios; pod deintegrate; pod install; cd ..;"


if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end


set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"

# ASDF
. ~/.asdf/plugins/java/set-java-home.fish
. /opt/homebrew/opt/asdf/libexec/asdf.fish

tmux source-file ~/.config/tmux/.tmux.conf
source /opt/homebrew/opt/asdf/libexec/asdf.fish
zoxide init fish | source

  echo "           ▓▓▓▓▓       " 
  echo "          ▓▓▓▓████▓    " 
  echo "         ▓▓▓▓████████▓ " 
  echo "        ▓▓  ▓█████████▓" 
  echo "           ▓█████████▓ " 
  echo "  ▓▓        ▓███████▓  " 
  echo "   ▓▓███▓▓██▓▓▓████▓   " 
  echo "       ▓▓▓██████▓█     " 
  echo "    ▓▓     ▓█████      " 
  echo "▓▓▓       ▓▓████▓▓     " 
  echo " ▓█▓    ▓▓▓██    ▓▓    " 
  echo "    ▓▓▓████▓▓      ▓   " 
  echo "                  ▓▓▓  " 
  echo "                 ▓▓▓█  " 
  echo "                ▓▓███  " 
  echo " ▓   ▓    ▓▓▓▓▓█████▓  " 
  echo "  ▓▓▓▓▓▓▓████████▓▓    " 
  echo "      ▓▓▓▓▓▓▓▓         " 
  echo "                       "           
