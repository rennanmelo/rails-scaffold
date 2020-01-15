require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not saved article without title" do
    article = Article.new
    assert_not article.save, "article saved without title"    
  end

  test "should do some interesting with stored state" do
    assert_equal 1002, Article.count
  end
end
