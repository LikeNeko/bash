#! /bin/zsh
source ~/.zshrc

# 拉取最新代码
echo "eg:\nxcode_to_cocos.sh /Users/neko/CococsProject/CattleRaising/ /Users/neko/CococsProject/CattleRaising/cow/"
git -C $1 pull origin $4 | grep -q "^Already up to date.$"

if [ $? -ne 0 ];then
echo "\nyes"
# 构建而不编译项目
/Applications/CocosCreator.app/Contents/MacOS/CocosCreator --path $2 --build "platform=ios;autoCompile=false;"
elif [ $3 -eq 1 ];then
/Applications/CocosCreator.app/Contents/MacOS/CocosCreator --path $2 --build     "platform=ios;autoCompile=false;"
else
echo "\nno"
fi

