class AddUserToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.integer :user_id
    end

    add_index :articles, :user_id
  end

  def self.down
    change_table :articles do |t|
      t.remove :user_id
    end
  end
end
