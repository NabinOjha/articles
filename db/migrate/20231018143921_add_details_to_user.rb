class AddDetailsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_no, :text, null: false
  end
end
