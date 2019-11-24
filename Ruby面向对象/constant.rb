# 大写字母开头即为常量
# 你如果违反这个「约定」，你会得到一个警告
#
# 常量的作用域

CONST = 'root const'
module MyModule # 姑且认为 module 和 class 没什么区别
  CONST = 'outer const'
  class MyClass
    CONST = 'inner const'
    p 'Module.nesting'
    p Module.nesting   # [MyModule::MyClass, MyModule]
  end
  p CONST              # 'outer const'
  p MyClass::CONST     # 'inner const'
end
p CONST                     # 'root const'
p MyModule::CONST           # 'outer const'
p MyModule::MyClass::CONST  # 'inner const'
p ::CONST                   # 'root const'
#
p 'MyModule.constants 方法得到 MyModule 内部的所有一级常量'
p MyModule.constants        # [:MyClass, :CONST]
p Module.constants[0...3]   # [:NotImplementedError, :NameError, :NoMethodError], 由于顶层常量太多了，所以用 [0..3] 截取前4个
p MyModule.is_a? Module     # true - 说明 MyModule 是 Module 的实例
# 这是因为 MyModule.constants 是实例方法，Module.constants 是类方法，所以他们的作用不同

# 你还可以在任何地方使用 Module.nesting 打印出当前作用域的层级结构
#
# 接下来请看 receiver_and_ancestors_chain.rb