class DClass
  def f1;
    'x';
  end
end

class DClass
  def f2;
    'y';
  end
end

obj = DClass.new
p obj.f1
p obj.f2

# 这说明多出类定义会合并
# 第二次定义 DClass，叫做「打开类」open class
# ruby 的 class 更像一个作用域标记，而不是声明语句
#
# 因此 words_of_string 实际上是打开 String 类，然后添加了一个 to_words 方法
#
# 接下来请看 inside_class.rb