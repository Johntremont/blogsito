class AddReferencesToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :like, foreign_key: true
  end
end
