#! /bin/zsh
source ~/bash_script/nkcore

if [ ! -e "main.go" ]; then
    echo "没有main.go";
    exit;
fi

# 添加确实模块 移除不需要的
go mod tidy -v
# 生产vendor 文件夹
go mod vendor -v
