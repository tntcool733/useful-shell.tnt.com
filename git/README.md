# git

## config
```
# 系统:/etc/gitconfig
# 用户:~/.gitconfig 或 ~/.config/git/config

# 每一个git的提交都需要记录username和email，需要设置
git config --global user.name "xxx"
git config --global user.email "xxx@example.com"

# 检查配置信息
git config --list
```

## help
```
# 查看命令使用
git help 
```

## init & clone
```
# 在现有目录中初始化仓库
git init

# 克隆现有的仓库
git clone https://github.com/libgit2/libgit2 mylibgi
```

## status
```
# Untracked 未跟踪, Unmodified 未修改, Modified 已修改, Staged 已加入下次提交暂存区
# 检查当前文件状态
git status
git status -s
```

## add
```
# 将这个命令理解为“添加内容到下一次提交中”而不是“将一个文件添加到项目中”要更加合适。
git add
```

## .gitignore
```
# 仓库中添加文件 .gitignore
# 参考：https://github.com/github/gitignore
```

## diff
```
# 查看已暂存和未暂存的修改
git diff --staged

# 此命令来看你的系统支持哪些 Git Diff 插件
git difftool --tool-help 
```

## commit
```
# 提交更新
git commit -m 'xxx'

# 提交更新，跳过暂存区
git commit -a -m 'xxx'
```

## rm
TODO

## mv
TODO

## log
TODO

## remote
TODO

## fetch
TODO

## push
TODO

## tag
TODO

## branch
TODO

## checkout
TODO

