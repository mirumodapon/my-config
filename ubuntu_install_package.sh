packages=(
  "git"
  "vim"
  "htop"
  "curl"
  "tmux"
  "tree"
)

something_funny=(
  "cmatrix"
  "lolcat"
)

apt update
for package in "${packages[@]}"; do
  type $package &>/dev/null && : || apt install $package
done
for package in "${something_funny[@]}"; do
  type $package &>/dev/null && : || apt install $package
done