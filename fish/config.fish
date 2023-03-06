

alias intel "arch -x86_64"
alias fishrc "nvim ~/.config/fish/config.fish"
alias fishup "source ~/.config/fish/config.fish"

alias ls "exa -la --icons"
alias g "git"
alias y "yarn"
alias iy "intel yarn"
# alias vim "lvim"

set PATH /usr/local/bin /usr/sbin $PATH
set PATH /opt/homebrew/bin $PATH
set PATH /Users/thalesgelinger/.asdf/installs/flutter/3.3.4-stable/bin $PATH

if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

set -g theme_nerd_fonts yes
set -g theme_powerline_fonts no

set PATH $HOME/.jenv/bin $PATH
set JAVA_HOME /Users/thalesgelinger/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home

set ANDROID_SDK_ROOT /Users/thalesgelinger/Library/Android/sdk
set ANDROID_HOME /Users/thalesgelinger/Library/Android/sdk
set PATH /Users/thalesgelinger/Library/Android/sdk/tools $PATH
set PATH /Users/thalesgelinger/Library/Android/sdk/emulator $PATH
set PATH /Users/thalesgelinger/Library/Android/sdk/tools/bin $PATH
set PATH /Users/thalesgelinger/Library/Android/sdk/platform-tools $PATH

set PATH /usr/bin:/bin:/usr/sbin:/sbin $PATH 
set PATH /Users/thalesgelinger/.local/bin $PATH 


set -g theme_color_scheme dracula

alias cleanmetro "rm -rf node_modules; yarn; watchman watch-del-all; rm -fr $TMPDIR/haste-map-*; rm -rf $TMPDIR/metro-cache; yarn start -- --reset-cache;"
alias reset "rm -rf node_modules; yarn; cd ios; pod deintegrate; pod install; cd ..;"


source /opt/homebrew/opt/asdf/libexec/asdf.fish
