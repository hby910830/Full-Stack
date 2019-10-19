# 目录
> #### Ruby的基本概念 
> #### Ruby的控制语句
> #### Ruby的循环
> #### Ruby的数组与散列
 
## Ruby的基本概念
### 运行Ruby的方式
- **irb**：可交互命令行，每输入一个式子，它都会用=>给出一个值
- **ruby + 文件路径**

![](https://upload-images.jianshu.io/upload_images/1181204-7a75254403fe13a1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 变量
- **没有关键字：** 没有var, let, const, 直接 a=1 就行
   
![](https://upload-images.jianshu.io/upload_images/1181204-3a98b358f0747c0c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- **局部变量：** 小写字母开头，或者_开头
![](https://upload-images.jianshu.io/upload_images/1181204-3c44c10bf1008c54.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- **全局变量：** $开头
![](https://upload-images.jianshu.io/upload_images/1181204-aed4b9a90d2f8b0f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- **类变量：** @@开头
- **实例变量：** @开头

### Ruby默认没有闭包
- 代码
```
a = 1
def f1
 p a
end
fi() #括号可以省略
#报错：a不存在
```
- 默认没有闭包
> 闭包是指函数可以使用外部的自由变量
> 没有闭包是指函数**不可以**使用外部的自由变量
> 用Ruby其他语法可以实现闭包

### 常量
> 全大写：RUBY_VERSION/ARGV

![](https://upload-images.jianshu.io/upload_images/1181204-58c59390b9c96d48.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 代码
```
A = 1
def f1
 p A
end
f1 #1
```

- 大写就是常量

### 多重赋值（JavaScript里叫做析构赋值）
- 简化
```
a,b,c = 1,2,3
a,b,*c = 1,2,3,4,5
a,*b,c = 1,2,3,4,5
```
![](https://upload-images.jianshu.io/upload_images/1181204-11164777c366c4f1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 交换
```
a,b = b,a
```
![](https://upload-images.jianshu.io/upload_images/1181204-944e27bf6550ef44.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
- 数组
```
arr = [1,2]
a,b = arr #a=1,b=2
```

### 字符串
- 单引号
> puts '12\n34'　#单引号不会转义

- 双引号
> puts "12\n34"　#双引号会把\n转义成换行

![](https://upload-images.jianshu.io/upload_images/1181204-83e20e4861df5a69.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 多行字符串
```
puts <<eos
 12
 34
 56
eos
```
![](https://upload-images.jianshu.io/upload_images/1181204-fc1296649af59334.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### log
- 打印数据
> print('a', 'b')-默认不加换行
> puts('a', 'b')-默认每个加换行
> p('a', 'b')-加换行，不转义，并且会直观的看出数据类型
> 只要没有歧义，括号（）都可以省略

![](https://upload-images.jianshu.io/upload_images/1181204-1bb53bcd62968411.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 使用场景
> ``程序员一般使用 p ``
> ``日志里一般使用 puts 和 print ``

### 注释
- 单行注视
> ``#这是单行注释``
> ``#这是第二行注释``

- 多行注释
> ``=begin``
> ``多行注释``
> ``=end``


## Ruby的控制语句

### Ruby的if语句
```
if a > 3 then p 'big' end

if a > 3 then p 'big' else p 'small' end  #ruby的if语句是有值的

p(if a > 3 then 'big' else p 'small' end) 

p(if a > 4
 'big'
elsif a > 2  #else if 在 ruby 里要写成 elsif
 'middle'
else
 'samll'
end)
```
![](https://upload-images.jianshu.io/upload_images/1181204-f2da67f7696c3605.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### Ruby的if语句2
```
b = if a > 3 then 'big' else 'samll' end
b = a > 3 ? 'big' : 'small'

return if error
return unless success  # unless 和 if 是反逻辑
```
![](https://upload-images.jianshu.io/upload_images/1181204-73839717d9ca889a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### case语句（相当于JavaScript的switch case）
```
z = case x
    when 1
     '1'
    when 2,3
     '2 or 3'
    else
     'others'
    end  
```
![](https://upload-images.jianshu.io/upload_images/1181204-d055bdfa6dfc0214.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


## Ruby的循环
> ##### .times方法
> ##### for 关键字
> ##### while 关键字
> ##### until 关键字
> ##### .each方法
> ##### loop 关键字

### .times方法
- 一夜7次
```
7.times do 
  p 'one time'
end  
或者
7.times {p 'one time'}
```

![](https://upload-images.jianshu.io/upload_images/1181204-bbfece6fcc7c3281.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 相当于JavaScript的
``[0,1,2,3,4,5,6].map(i => {p 'one time'})``

- 块
> - .times是一个函数
> - do...end是代码块
> - {...}也是代码块
> - 一般多行用do...end 单行用{...}
> - 代码块作为.time函数的参数
> - ruby的函数调用可以省略()

- 获取 i
```
7.times do |i|
  p "#{i+1} 次"  #这里必须使用双引号，否则不会转义，相当于JS的${i}
end
或者
7.times { |i|
  p "#{i+1} 次"
}
两个代码都可以写成一行:
7.times do |i| p "#{i+1} 次" end
7.times { |i| p "#{i+1} 次"}
```
![](https://upload-images.jianshu.io/upload_images/1181204-440159a1db11d1ed.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


### .each方法
- 代码
```
name = ['hanbaoyi', 'hby']
name.each do |name|
 p name
end

name.each { |name| p name }

(1...7).each do |i| #1...7是一个Range,可以用(1...7).class打印出来
 p i
end

(1...7).each { |i| p i }
```
![](https://upload-images.jianshu.io/upload_images/1181204-b56689abbad92224.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### for关键字
![](https://upload-images.jianshu.io/upload_images/1181204-fa68f5a786f458a4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### while/until关键字
![](https://upload-images.jianshu.io/upload_images/1181204-2d7734daab8da818.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### loop关键字
- 代码（千万不能运行）
``loop do``
``p 'ruby'``
``end``

> **上面的代码会一直无限循环，除非在里面写break**

### 跳出循环
> **break** 表示退出所以循环
> **next** 表示退出当前循环，进入下一次循环
> 对于JavaScript里的 **break** 和 **continue**


## Ruby的数组与散列
### Ruby中的数据类型
- 只有对象，可用.class查看类
> 整数-Integer对象/Numeric对象
> 浮点数-Float对象
> 字符串-String对象
> 数组-Array对象
> 正则表达式-Regexp对象
> 文件-File对象
> 符号-Symbol对象
> 异常-Exception对象
> 散列-Hash对象

- 标识
> 每个对象都有一个object_id属性，表示其唯一性
> 如： a.object_id   a.equal? b

![](https://upload-images.jianshu.io/upload_images/1181204-534777c0b811fd3c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 数组
> 由Array类构造出来的对象
``[1,2].class``  #Array

- Ruby数组
> mixed = [1,2,'a','b','3']
> mixed.size  #相当于写mixed.size()
> =>5
> mixed.**methods**
> 打印出mixed的所有方法，注意这些方法都是以:冒号开头的，这是symbol

![](https://upload-images.jianshu.io/upload_images/1181204-9e519e31bc96a3ab.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 散列
> 由Hash类构造出来的对象

- 创建一个散列
``person = {name: 'hby', age: 18}`` #这是一个语法糖，ruby2.0之前的版本是不支持这种写法的

- symbol
> 上面的**name**和**age**不是字符串，而是**symbol**
> 等价于**person = {:name=>'hby', :age=>18}**
> person.keys
> =>[:name,:age]
> 如果想要字符串作为**key**，应该写成
> **person = {'name'=>'hby','age'=>18}**
 
- 注意
> 你可以认为**symbol**是轻量级的字符串，功能更少
> :name.to_s得到字符串，'name'.to_sym得到符号

![](https://upload-images.jianshu.io/upload_images/1181204-f1f3a00768db2f04.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 遍历散列
- .each方法
```
person.each do |key,value|
 p "key: #{key}, value: #{value}"
end
#输出时，symbol会自动变成string
```

![](https://upload-images.jianshu.io/upload_images/1181204-a79bb7deda328633.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 与JavaScript的区别
> person = {name: 'hby', age: 18},如果你想要获取'hby'

- 不能用person.name
``必须用person[:name]``

- 不能用person['name']
``必须用person[:name]``

- 'name'和:name是不同的
``person['name'] = 'jack'``
``person.keys #[:name,:age,'name']``

### 与JavaScript的区别2
```
def say_hi
 p 'hi'
end
person = {name: 'hby', age: 18}
如果你想要给person加一个方法/函数
```

- **不能用person[:say_hi] = say_hi**
> 因为say_hi等价于**say_hi()**
> say_hi 的返回值为 **p 'hi'** 的返回值，也就是'hi'
> 所以相当于 **person[:say_hi] = 'hi'**

- **可以用lambda表达式做到**
> person[:say_hi] = lambda{p 'hi'}
> person[:say_hi].call() #括号()可以省略

![](https://upload-images.jianshu.io/upload_images/1181204-29aa18e1297ff88d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 推荐的一些学习资源
- [菜鸟教程](https://www.runoob.com/ruby/ruby-tutorial.html)
> 过于简单，适合新手

- API手册（字典）
> [devdocs.io](https://devdocs.io/ruby~2.6/) 建议学习的时候查
> [apidock.com/ruby](https://apidock.com/ruby/Array) 建议做项目的时候查，更全面

- 书籍
> 《Ruby基础教程》很基础，看起来很慢
> 《Ruby元编程》高级教程，等你熟悉Rails之后再考虑看