chmod a+x ~ ~/www
# chmod a+r ~/www/index.html
# chmod a+r ~/www/Publications.html
# chmod a+r ~/www/Teaching.html


#!/bin/bash

# 检查 ~/www 是否存在
if [ ! -d "$HOME/www" ]; then
    echo "Error: Directory ~/www does not exist."
    exit 1
fi

# 为 ~/www 目录中的所有文件添加读取权限
chmod -R a+r "$HOME/www"

# 输出完成信息
echo "All files in ~/www are now readable by all users."