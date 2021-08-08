class AddRecognitionsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :recognition, :string
    add_column :users, :string, :string
  end
end
