# oracle-keep-alive

容器化[layou233/NeverIdle](https://github.com/layou233/NeverIdle)，Oracle 甲骨文保活，已在Oracle AMD和ARM机器上测试运行。

## Usage

```shell
# 删除已有的容器
docker rm -f oracle-keep-alive

# 默认值: -c 2h -m 2 -n 4h
docker run -idt --name oracle-keep-alive --restart=always domizhang/oracle-keep-alive:latest

# 自定义参数: AMD机器，不要额外消耗内存占用
docker run -idt --name oracle-keep-alive --restart=always domizhang/oracle-keep-alive:latest /app/NeverIdle -c 1h17m -n 2h3m

# 自定义参数: ARM机器
docker run -idt --name oracle-keep-alive --restart=always domizhang/oracle-keep-alive:latest /app/NeverIdle -c 1h17m -m 2 -n 2h3m
```

## Other

[1] [layou233/NeverIdle](https://github.com/layou233/NeverIdle)