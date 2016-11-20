class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :licensep, :string
    add_column :users, :phonen, :string
  end
end
