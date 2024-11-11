class AdddocumentsToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :document_no, :integer
    add_column :articles, :document_category, :string
    add_column :articles, :document_name, :string
    add_column :articles, :status, :string
  end
end
