class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :status

      t.timestamps

    end

    add_index :articles, :title, :unique => true
  end
end
