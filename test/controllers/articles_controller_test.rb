require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { content: @article.content, title: @article.title } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { content: @article.content, title: @article.title } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end

  test "should identify routes" do
    assert_generates "/articles", controller: "articles", action: "index"
    assert_generates "/articles/1", controller: "articles", action: "show", id: "1"
    assert_generates "/articles/new", controller: "articles", action: "new"
    assert_generates "/articles/8/edit", controller: "articles", action: "edit", id: "8"

    # At the route /articles with method post we call controller articles and action create?
    assert_recognizes({controller: "articles", action: "create"}, {path: "articles", method: :post})
    assert_recognizes({controller: "articles", action: "index"}, "articles")
    assert_recognizes({controller: "articles", action: "destroy", id: "8"}, {path: "articles/8", method: :delete})
  end
end
