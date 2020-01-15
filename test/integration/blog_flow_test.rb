require 'test_helper'

class BlogFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "can view articles list from root route" do
    get root_path
    assert_select "h1", "Articles"
  end
end
