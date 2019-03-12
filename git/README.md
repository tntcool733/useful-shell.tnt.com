# git

## config
```bash
# 系统:/etc/gitconfig
# 用户:~/.gitconfig 或 ~/.config/git/config

# 每一个git的提交都需要记录username和email，需要设置
git config --global user.name "xxx"
git config --global user.email "xxx@example.com"

# 检查配置信息
git config --list
```

## help
```bash
# 查看命令使用
git help 
```

## init & clone
```bash
# 在现有目录中初始化仓库
git init

# 克隆现有的仓库
git clone https://github.com/libgit2/libgit2 mylibgi
```

## status
```bash
# Untracked 未跟踪, Unmodified 未修改, Modified 已修改, Staged 已加入下次提交暂存区
# 检查当前文件状态
git status
git status -s
```

## add
```bash
# 将这个命令理解为“添加内容到下一次提交中”而不是“将一个文件添加到项目中”要更加合适。
git add
```

## .gitignore
```bash
# 仓库中添加文件 .gitignore
# 参考：https://github.com/github/gitignore
```

## diff
```bash
# 查看已暂存和未暂存的修改
git diff --staged

# 此命令来看你的系统支持哪些 Git Diff 插件
git difftool --tool-help 
```

## commit
```bash
# 提交更新
git commit -m 'xxx'

# 提交更新，跳过暂存区。对new file，此命令不生效，需要git add
git commit -a -m 'xxx'

# 撤销操作
git commit --amend

# 提交后发现忘记了暂存某些需要的修改，可以像下面这样操作
# 最终只会有一个提交 - 第二次提交将代替第一次提交的结果
git commit -m 'initial commit'
git add forgotten_file
git commit --amend
```

## rm
```bash
# 移除文件
git rm

# 移除文件。如果删除之前已经修改过并且放到了暂存区域，则需要强制。
git rm -f

# 移除跟踪，但是在磁盘保留
git rm --cached 

# 扩展匹配文件
git rm log/\*.log
```

## mv
```bash
# 重命名
git mv README.md README

# 等价于以下三个动作
mv README.md README
git rm README.md
git add README
```

## log
```bash
# 查看提交历史
git log

# 查看最近2次的提交并且显示差异
git log -p -2

# 每次简略的提交信息
git log --stat

# 更多格式
git log --pretty=oneline/short/full/fuller

# 图形化展现
git log --graph

# 查看各个分支当前所指的对象
git log --oneline --decorate
git log --oneline --decorate --graph --all
```

## remote
```bash
# 显示需要读写远程仓库使用的 Git 保存的简写与其对应的 URL
git remote -v

# 添加远程仓库简写
git remote add <shortname> <url>

# 查看某一个远程仓库的更多信息
git remote show [remote-name]

# 重命名
git remote rename [old-name] [new-name]

# 移除
git remote rm [remote-name]

```

## fetch
```bash
# 这个命令会访问远程仓库，从中拉取所有你还没有的数据。 
# 执行完成后，你将会拥有那个远程仓库中所有分支的引用，可以随时合并或查看。
git fetch [remote-name]
```

## pull
```bash
# TODO
```

## push
```bash
# 推送到远程仓库
git push [remote-name]
```

## tag
TODO

## branch
TODO

## checkout
TODO

