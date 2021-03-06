class CreateUserCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_categories do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :priority, null: false
      t.timestamps
    end
  end
end
