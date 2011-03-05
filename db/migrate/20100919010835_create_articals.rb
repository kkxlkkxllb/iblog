class CreateArticals < ActiveRecord::Migration
  def self.up
    create_table :articals do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.boolean :top_token,:default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :articals
  end
end
