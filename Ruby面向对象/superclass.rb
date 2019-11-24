# p '--String--'
p String.superclass       # Object
p Object.superclass       # BasicObject
p BasicObject.superclass  # nil

# p '--Array--'
p Array.superclass        # Object
p Array.is_a? Class       # true

# p '--MyClass--'
class MyClass; end
p MyClass.superclass    # Object
p MyClass.is_a? Class   # true

# 不用想，所有类都是 Class 类的实例，或者说所有类的构造者都是 Class
# 但每个类的父类/超类各不相同
#
# 接下来烧脑了
p Class.is_a? Class   # true
# 也就是说 Class 是 Class 的实例，不用尝试去理解这句话
# 只需要记住「所有类都是 Class 类的实例」，而 Class 也是类，所以它当然是 Class 的实例
#
# 题外话，这跟 JS 的 Function 很像
# JS 中所有函数都是 Function 的实例，或者说所有函数的构造者都是 Function
# 而 Function 也是函数，所以 Function 是 Function 的实例，Function 是 Function 构造者
#
# 现在知道了 Class 的构造者是 Class
# 那么 Class 的父类是什么呢？
p Class.superclass    # Module

# Module 是什么，目前不知道，先不管
#
# 我们先看 2.png
#
# 一个对象有哪些属性：
# 1. 先看自身存储了哪些方法或属性
# 2. 再看类定义了哪些方法或属性
# 3. 再看类的父类定义了哪些方法或属性
#
# 看 2_1.png

# 接下来我们学习常量，请打开 constant.rb