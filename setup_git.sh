git_configs=(
  "core.editor vi"
  "color.ui true"
  "init.defaultbranch main"
  "user.name Mirumo"
  "user.email mail@mirumo.org"
  "pager.branch false"
  "pager.tag false"
)

git config --global alias.st status
git config --global alias.lg "--color --graph --pretty=format:'%Cred%h%Creset - %s%C(yellow)%d%Creset <%C(blue)%an%Creset> %C(green)%cr%Creset.' --abbrev-commit --"
git config --global alias.alg "--color --graph --all --pretty=format:'%Cred%h%Creset - %s%C(yellow)%d%Creset <%C(blue)%an%Creset> %C(green)%cr%Creset.' --abbrev-commit --"

for config in "${git_configs[@]}"; do
  git config --global $config
done