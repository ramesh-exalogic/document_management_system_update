class Addrolestodocumentcategory < ActiveRecord::Migration[7.0]
  def change
    add_column :document_categories, :role, :string
    add_column :document_categories, :view, :integer, default: 0
    add_column :document_categories, :edit, :integer, default: 0
    add_column :document_categories, :download, :integer, default: 0
  end
end
