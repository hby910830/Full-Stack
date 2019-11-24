p 'hello'.class  # String
p String.class   # Class

# 记得吗：对象的 my_method 其实是定义在 class MyClass 里的
#
# 如果把 String 当作一个对象，它的类就是 Class
# 那么String.xxx 的 xxx 方法其实是定义在 class Class 里的

p Class.instance_methods(false) # [:allocate, :superclass, :new]
# 因此 String.new 之所以可以调用，是因为 class Class 里面 def new 了

p 'hello'.is_a? String  # true  is_a? 就是函数的名字，没错，问号也属于名字的一部分
p String.is_a? Class    # true，说明 String 是 Class 的实例
p Array.is_a? Class     # true，说明 Array 是 Class 的实例

# 1 所有类都是Class的实例
# 2 Class 也是类
# => Class 是不是 Class 的实例
p Class.is_a? Class # true

# 注意，这里并没有说 String 和 Array 继承了 Class
# 就像你不会说 'hello' 继承了 String
# 你只会说一个类继承了另一个类，只不过所有类都是 Class 的实例
#
# 实例：对象b是某类B的实例，这意味着对象__b__拥有类__B__定义的方法和属性
# 继承：类A继承了类B，这意味着类A的对象__a__拥有类__B__定义的方法和属性
#
# 你只需要记住这些用词即可，先不用区分他们的含义
#
# 接下来看 superclass.rb