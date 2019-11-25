# 调用方法有两种写法
# obj.my_method('hi')
# obj.send(:my_method, 'hi')
# 后者的好处是可以实现动态派发，另一个好处是可以调用私有方法

class Notification
  def notify(which)
    send "notify_#{which}"
  end

  private

  def notify_weChat
    p '通知到微信'
  end
  def notify_email
    p '通知到邮件'
  end
  def notify_phone
    p '通知到手机'
  end
  def notify_DingDing
    p '通知到钉钉'
  end
  def notify_all
    notify_weChat
    notify_email
    notify_phone
    notify_DingDing
  end
end

n = Notification.new
n.notify('all')
# "通知到微信"
# "通知到邮件"
# "通知到手机"
# "通知到钉钉"

# 除了动态调用方法
# 还可以动态定义方法
# 见 define_methods_dynamically.rb