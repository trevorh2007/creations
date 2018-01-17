class CreateSpreeBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_blogs do |t|
      t.string :title
      t.text :body
      t.text :notes
      t.string :slug
      t.index :slug, unique: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
