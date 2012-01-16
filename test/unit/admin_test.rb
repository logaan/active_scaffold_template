require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  test "admin name is email address" do
    admin = Admin.new(:email => "foo@bar.com")
    assert_equal "foo@bar.com", admin.name
  end
end
