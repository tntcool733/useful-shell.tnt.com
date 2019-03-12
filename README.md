# Useful Shell

## linux

### [git](https://github.com/tntcool733/useful-shell.tnt.com/blob/master/git)

### [curl](https://github.com/tntcool733/useful-shell.tnt.com/blob/master/curl)


### [batch_run](https://github.com/tntcool733/useful-shell.tnt.com/blob/master/batch_run.sh)多机器运行命令
```bash
# 注：跳板机运行，并需准备好服务器ip列表文件
bash ./batch_run.sh <ip_list_file> <bash_to_run>
<ip_list_file> -- 机器ip列表文件
<bash_to_run>  -- 将会运行的命令

例：bash ./batch_run.sh ip_list "cat /data/weblog/business/xx.com/info.log |grep xxx"
```


### [get_pids](https://github.com/tntcool733/useful-shell.tnt.com/blob/master/get_pids.sh) 查找多进程pid
```bash
bash ./get_pids.sh <dir> <UID>
<dir> -- 该目录下的文件夹名都会被当成进程名称，进行过滤查找pid
<UID> -- 该用户id的进程才会被查找pid

例：bash ./get_pids.sh /data/service/java_base www-data
```

### [scp](http://www.runoob.com/linux/linux-comm-scp.html) 文件传输
```bash
# 本地到服务器
scp    local_file   remote_username@remote_ip:remote_file
scp -r local_folder remote_username@remote_ip:remote_folder 

# 服务器到本地
scp    remote_username@remote_ip:remote_file    local_file
scp -r remote_username@remote_ip:remote_folder  local_folder 

例：
scp tntcool733@1.2.3.4:/path/file.log /localpath/temp_file.log
scp /localpath/temp_file.log tntcool733@1.2.3.4:/path/file.log 
```

### [iotop](https://www.cnblogs.com/legendbaby/p/5056967.html)磁盘读写查询
```bash
sudo iotop -P -d 3

--version #显示版本号
-h, --help #显示帮助信息
-o, --only #显示进程或者线程实际上正在做的I/O，而不是全部的，可以随时切换按o
-b, --batch #运行在非交互式的模式
-n NUM, --iter=NUM #在非交互式模式下，设置显示的次数，
-d SEC, --delay=SEC #设置显示的间隔秒数，支持非整数值
-p PID, --pid=PID #只显示指定PID的信息
-u USER, --user=USER #显示指定的用户的进程的信息
-P, --processes #只显示进程，一般为显示所有的线程
-a, --accumulated #显示从iotop启动后每个线程完成了的IO总数
-k, --kilobytes #以千字节显示
-t, --time #在每一行前添加一个当前的时间
-q, --quiet #suppress some lines of header (implies --batch). This option can be specified up to three times to remove header lines.
-q column names are only printed on the first iteration,
-qq column names are never printed,
-qqq the I/O summary is never printed.

使用left和right改变排序（方向键改变排序列），还可使用以下命令：
r：反向排序，
o：切换至选项--only，
p：切换至--processes选项，
a：切换至--accumulated选项
q：退出
i：改变线程的优先级
```

---
```
// 查看线程的cpu占用从高到低排序
ps H -eo user,pid,ppid,tid,time,%cpu --sort=%cpu

// 查看某进程的线程cpu占用从高到低排序
ps -mp <pid> -o THREAD,tid,time | sort -rn

// 查看某ip所建tcp连接
netstat -anp |grep <ip>

// 查询进程信息
ps -ef |grep <pid>
printf "%x\n" pid

```


## ffmpeg
+ [ffmpeg](https://www.ffmpeg.org/ffmpeg.html) ffmpeg工具
```bash
# 转码推流
ffmpeg  -re -i <source> -c:a copy -c:v libx264  -f flv <target>

# 源码推流
ffmpeg  -re -i <source> -c copy -f flv <target>

# 转换视频分辨率
ffmpeg -i <source_video> -s 1080x640 -vcodec h264 -strict -2 <target_video>
```

## jvm tools
+ [j_combine](https://github.com/tntcool733/useful-shell.tnt.com/blob/master/j_combine.sh) jvm命令套餐
```bash
# 注：需先切换为root
sudo -s 
bash ./j_combine <user> <pid> <dir>
<user> -- 将会以user身份运行命令
<pid>  -- 进程pid
<dir>  -- 输出的文件夹。注意：hprof堆文件始终会输出在/tmp/目录下

例：sudo -s
    bash ./j_combine www-data 111 /home/xxx
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
