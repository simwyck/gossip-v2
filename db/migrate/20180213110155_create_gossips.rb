class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|

      t.timestamps
      t.belongs_to :admin, index: true
    end
  end
end
