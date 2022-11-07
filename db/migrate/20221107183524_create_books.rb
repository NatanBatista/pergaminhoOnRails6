class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :desc
      t.integer :isbn
      t.date :date

      t.timestamps
    end
  end
end
