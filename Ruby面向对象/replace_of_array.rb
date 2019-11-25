class Array
  def replace(old, new)
    self.map { |item| item == old ? new : item }
  end
end

require 'test/unit'
p ENV

# 此处建议使用 RubyMine 的 LiveTemplate 功能
# VSCode 应该也有对应的 Snippets 插件
class ReplaceTest < Test::Unit::TestCase
  def test_1
    array = %w(one two one three)
    assert_equal ['1', 'two', '1', 'three'], array.replace('one', '1')
  end
end

# RubyMine 推荐用 %w 代替数组，你可以点击小灯泡试试
#
# 这个例子把 Array 原有的 replace 覆盖了！非常__不推荐__这样做！
#
# 接下来请看 inside_class.rb