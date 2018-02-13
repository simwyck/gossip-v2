class AddContentToGossips < ActiveRecord::Migration[5.1]
  def change
    add_column :gossips, :content, :string
  end
end
