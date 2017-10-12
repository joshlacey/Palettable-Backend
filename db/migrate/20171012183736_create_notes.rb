class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.bigint :user_id, null: false
      t.bigint :palete_id, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
