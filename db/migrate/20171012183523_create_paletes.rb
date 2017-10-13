class CreatePaletes < ActiveRecord::Migration[5.1]
  def change
    create_table :palates do |t|
      t.bigint :user_id, null: false
      t.json :data, null: false

      t.timestamps
    end
  end
end
