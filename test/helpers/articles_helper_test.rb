require 'test_helper'

class ArticlesHelperTest < ActionView::TestCase
  test "link to article should have title capitalized" do
    article = articles(:uncap)
    assert_dom_equal %{<a href="/articles/#{article.id}">Uncapitalized title</a>}, link_to_article(article)
  end

  test "should be archived after 30 days" do
    first = Article.first
    assert_not first.archived?

    future = Date.current + 31.days
    travel_to future do 
      assert first.archived?
    end
  end
end