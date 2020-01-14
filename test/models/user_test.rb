require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user should respond to name" do
    user = User.new
    assert_respond_to user, :name
  end
end
