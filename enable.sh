#!/bin/bash

# 检查 ~/www 是否存在
if [ ! -d "$HOME/www" ]; then
    echo "Error: Directory ~/www does not exist."
    exit 1
fi

# 为所有文件添加读取权限
find "$HOME/www" -type f -exec chmod a+r {} \;

# 为所有目录添加执行权限
find "$HOME/www" -type d -exec chmod a+x {} \;

# 输出完成信息
echo "Permissions updated: All files in ~/www are now readable, and all directories are executable by all users."