require 'test_helper'

class ArticlesHelperTest < ActionView::TestCase
  test "link to article should have title capitalized" do
    article = articles(:uncap)
    assert_dom_equal %{<a href="/articles/#{article.id}">Uncapitalized title</a>}, link_to_article(article)
  end
end