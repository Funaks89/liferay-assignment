class CreateRecognitions < ActiveRecord::Migration[6.1]
  def change
    create_table :recognitions do |t|
      t.string :description
      t.references :recognized, null: false, foreign_key: { to_table: :users }
      t.references :recognizer, null: false, foreign_key: { to_table: :users }


      t.timestamps
    end
  end
end
