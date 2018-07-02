# Useful command line

## JVM tools
```
# jstack
sudo -s
sudo -u www-data jstack <pid> > ~/temp.log
printf "%x\n" pid

# jstat
sudo jstat -gcutil <pid> 1000

# jmap
sudo jmap -heap <pid>
sudo -u www-data jmap -dump:format=b,file=/tmp/xxx.hprof [pid]
```

## bash
