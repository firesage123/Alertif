class AddLicenseToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :license, :text
  end
end
