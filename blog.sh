#! /bin/zsh
source ~/bash_script/nkcore
alias cp='cp'


cd ~/NekoBlog
cp -rf ~/BlogMd/*\[ok\]\.md ~/NekoBlog/source/_posts
hexo d -g | grep "Deploy done: git"
