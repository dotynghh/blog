class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.integer :user_id
      t.text :content
      t.timestamps null: false
    end
  end
end
