# Useful Command Line

## jvm tools
```
// jstack工具打印线程堆栈信息
sudo -s
sudo -u www-data jstack <pid> > ~/temp.log
printf "%x\n" pid

// jstat实时查看内存分布变化
sudo jstat -gcutil <pid> 1000

// jmap打印堆内存分布简要信息
sudo jmap -heap <pid>

// 整个堆内存文件hprof打印
sudo -u www-data jmap -dump:format=b,file=/tmp/xxx.hprof [pid]
```

## linux
+ [查找某目录下多个进程pid](https://github.com/tntcool733/useful-shell.tnt.com/blob/master/get_pid.sh)
```
bash ./get_pid.sh <dir> <UID>
<dir> -- 该目录下的文件夹名都会被当成进程名称，进行过滤查找pid
<UID> -- 该用户id的进程才会被查找pid

例：bash ./get_pid.sh /data/service/java_base www-data
```

```
// 查看线程的cpu占用从高到低排序
ps H -eo user,pid,ppid,tid,time,%cpu --sort=%cpu

// 查看某进程的线程cpu占用从高到低排序
ps -mp <pid> -o THREAD,tid,time | sort -rn

// 查看某ip所建tcp连接
netstat -anp |grep <ip>

// 查询进程信息
ps -ef |grep <pid>

```

## svn 
+ 忽略svn文件参考资料：https://math-linux.com/linux/tip-of-the-day/article/svn-how-to-ignore-file-or-directory-in-subversion
+ 小乌龟操作参考：https://tortoisesvn.net/docs/nightly/TortoiseSVN_en/tsvn-cli-main.html
+ 分支merge参考：http://blog.csdn.net/daniel_h1986/article/details/8159811  http://www.jianshu.com/p/8596168a276c
```
// 忽略svn文件
// svnignore.txt里面的内容是：
// .classpath
// .project
// .settings
// target
svn propset svn:ignore -F ../svnignore.txt .

// merge trunk到本地分支
// --dry-run 可选，用于test merge
svn merge [--dry-run] https://svn.tnt.com/demo/trunk


// 创建目录
svn mkdir -m "making a new dir" https://svn.tnt.com/demo/trunk


// 本地未提交代码回退
svn revert -R ./
```

## mongodb
```
// 连接实例
mongo ip:port/databaseName -u userName -p password

// 查看集合
show collections

// 基本操作
db.myCollection.count()
db.myCollection.findOne()
```
