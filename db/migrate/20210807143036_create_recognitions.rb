class CreateRecognitions < ActiveRecord::Migration[6.1]
  def change
    create_table :recognitions do |t|
      t.integer :recognizer_id
      t.integer :recognized_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
