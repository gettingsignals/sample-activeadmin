class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.integer :writer_id
      t.integer :publisher_id

      t.timestamps
    end
    add_index :articles, :writer_id
    add_index :articles, :publisher_id
  end
end
