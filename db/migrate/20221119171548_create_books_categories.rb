class CreateBooksCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :books_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
