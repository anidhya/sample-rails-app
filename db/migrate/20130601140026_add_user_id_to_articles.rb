class AddUserIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :user_id, :integer, :after => :status
  end
end
