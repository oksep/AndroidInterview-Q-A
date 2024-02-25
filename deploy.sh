#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build

cd docs

echo 'android-interview.septenary.cn' > CNAME

cd -

# 发布主分支的内容
git add -A
git commit -m 'update content.'
git push origin