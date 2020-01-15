module ArticlesHelper
  def link_to_article(article)
    link_to "#{article.title.capitalize}", article
  end
end
