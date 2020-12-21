class AddArticleUrlToPressArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :press_articles, :article_url, :string
  end
end
