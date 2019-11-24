module Module1
  def my_method
    'M1#my_method()'
  end
end

class Class1
  include Module1 # 相当于 C1 < M1，但是不能继承一个模块，只能继承一个类
end

class Class2 < Class1; end

# [Class2, Class1, Module1, Object, Kernel, BasicObject]
p Class2.ancestors # 出现 Kernel 是因为 Object include 了 Kernel，比如 print 就定义在 Kernel 里
# 接下来看 prepend.rb