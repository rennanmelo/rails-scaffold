require 'test_helper'

class BlogFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "can view articles list from root route" do
    get root_path
    assert_select "h1", "Articles"
  end

  test "can create an article" do
    get '/articles/new'
    assert_response :success
    post "/articles", params: { article: { title: "My post title", content: "My post content"} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Article was successfully created."
  end
end
