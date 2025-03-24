#!/bin/bash
chmod a+x ~ ~/www
# chmod a+r ~/www/index.html
# chmod a+r ~/www/Publications.html
# chmod a+r ~/www/Teaching.html


if [ ! -d "$HOME/www" ]; then
    echo "Error: Directory ~/www does not exist."
    exit 1
fi

# 为 ~/www 下的所有文件添加读取权限（不影响目录）
find "$HOME/www" -type f -exec chmod a+r {} \;

# 输出完成信息
echo "All files in ~/www and its subdirectories are now readable by all users."