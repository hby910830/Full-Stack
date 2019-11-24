def to_words(s)
  s.gsub(/[^\da-zA-Z\s]/, '')
end

require 'test/unit'

class ToWordsTest < Test::Unit::TestCase
  def test_1
    assert_equal '3 the Magic Number', to_words('#3, the *Magic, Number*?')
  end
end