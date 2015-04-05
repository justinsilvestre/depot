require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase

test "received" do
  mail = OrderNotifier.received(orders(:one))
  assert_equal "Pragmatic Store Order Confirmation", mail.subject
  # assert mail to and mail from are equal to respective addresses
  assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
end
test "shipped" do
  mail = OrderNotifier.shipped(orders(:one))
  # same assert_equal for mail attributes
  assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
end

end
