if status is-interactive
# Commands to run in interactive sessions can go here
set fish_greeting
set -gx EDITOR nvim
set -gx VISUAL nvim
abbr -a y yazi
abbr -a n nvim
abbr -a f fzf-open
abbr -a cf 'set -l dir (fd --type d | fzf); and cd $dir'
abbr -a ar systemctl --user restart pipewire pipewire-pulse wireplumber
abbr -a yt yt-dlp -f "bestvideo[height<=2160]+bestaudio" --merge-output-format mp4
abbr update sudo pacman -Syu
function ya
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi --cwd-file=$tmp
    set cwd (cat $tmp)
    if [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]
        cd $cwd
    end
    rm -f $tmp
end
end

starship init fish | source


