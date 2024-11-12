class AdddocumentIdtodocumentcategory < ActiveRecord::Migration[7.0]
  def change
    add_column :document_categories, :document_id, :integer
  end
end
