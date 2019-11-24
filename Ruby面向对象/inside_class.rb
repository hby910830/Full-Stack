class MyClass
  def initialize
    @var = 1
  end

  def my_method
    @var += 1
    # 自动 return @var
  end
end

obj = MyClass.new
p obj.class               # MyClass
p obj.my_method           # 2
p obj.instance_variables  # [:@var]

p obj.methods.grep(/my/)  # [:my_method], grep 在 methods 中搜索含有 my 的
p MyClass.instance_methods.grep(/my/) # 其实 MyClass.instance_methods 就是 obj.methods
p MyClass.instance_variables #[]
# 不过这里我挺纳闷为什么 MyClass.instance_variables 却是空的，@v 居然在 obj.instance_variables
#
# 总结：
# 一个对象的实例变量储存在自身
# 一个对象的方法存储在其类身上
#
# 请看 1.png
#
# 接下来看 class_is_an_object.rb