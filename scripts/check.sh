# 检测软件是否安装

if [ $# -eq 0 ]; then
  echo "Please enter the package name."
  exit 1
fi

for package in "$@"; do
  if pacman -Q "$package" &> /dev/null; then
    echo "$package is already installed."
  else
    echo "##### $package is not installed. #####"
  fi
done
