

alias intel "arch -x86_64"
alias fishrc "nvim ~/.config/fish/config.fish"
alias fishup "source ~/.config/fish/config.fish"

alias ls "exa -la --icons"
alias g "git"
alias y "yarn"
alias iy "intel yarn"

set PATH /usr/local/bin /usr/sbin $PATH
set PATH /opt/homebrew/bin $PATH

if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

set -g theme_nerd_fonts yes
set -g theme_powerline_fonts no

set PATH $HOME/.jenv/bin $PATH

set PATH /usr/bin:/bin:/usr/sbin:/sbin $PATH 
set PATH /Users/tgelin01/.local/bin $PATH 

set ANDROID_HOME /Users/tgelin01/Library/Android/sdk
set ANDROID_SDK_ROOT /Users/tgelin01/Library/Android/sdk

set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/emulator $PATH
set PATH $ANDROID_HOME/tools/bin $PATH
set PATH $ANDROID_HOME/platform-tools $PATH


set -g theme_color_scheme dracula

alias cleanmetro "rm -rf node_modules; yarn; watchman watch-del-all; rm -fr $TMPDIR/haste-map-*; rm -rf $TMPDIR/metro-cache; yarn start -- --reset-cache;"
alias reset "rm -rf node_modules; yarn; cd ios; pod deintegrate; pod install; cd ..;"


. ~/.asdf/plugins/java/set-java-home.fish

source /opt/homebrew/opt/asdf/libexec/asdf.fish
tmux source-file ~/.config/tmux/.tmux.conf
