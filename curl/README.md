# curl大全

## 请求响应耗时分析
```bash
bash curl_time.bash <url>
<url> -- 请求地址

例：
bash curl_time.bash www.yy.com
```

## 保存网页
```bash
curl -o <file> www.yy.com
```

## 显示response头信息
```bash
curl -i www.yy.com
```

## 显示通信过程
```bash
curl -v www.yy.com
curl --trace output.txt www.yy.com
```

## Referer字段
```bash
curl --referer http://www.baidu.com http://www.yy.com
```

## User Agent字段
```bash
curl --user-agent "[User Agent]" www.yy.com
```

## cookie
```bash
curl --cookie "name=tnt" www.yy.com

# 可以保存服务器返回的cookie到文件
curl -c cookies www.yy.com

# 可以使用这个文件作为cookie信息
curl -b cookies www.yy.com
```

## header
```bash
curl --header "Content-Type:application/json" www.yy.com
```

## 指定host
```bash
curl --silent -H "Host: www.xx.com" "127.0.0.1/xx/xx"
```

## 查询ip所属国家
```bash
curl ip.cn/<ip>
```
