class Article < ApplicationRecord
  def archived?
    Date.current > self.created_at + 30.days
  end
end
