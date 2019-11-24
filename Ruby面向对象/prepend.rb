module Module1
  def my_method
    'M1#my_method()'
  end
end

class Class1
  prepend Module1 # 相当于 Class1 < Module1，但是不能继承一个模块，只能继承一个类
end

class Class2 < Class1; end

p Class2.ancestors  # [Class2, Module1, Class1, Object, Kernel, BasicObject]

class2 = Class2.new
p class2.my_method  # "M1#my_method()"

# 知道了如何查找方法，接下来看看如何执行方法 execute_method.rb
