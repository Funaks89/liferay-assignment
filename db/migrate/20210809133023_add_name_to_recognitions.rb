class AddNameToRecognitions < ActiveRecord::Migration[6.1]
  def change
    add_column :recognitions, :name, :string
  end
end
