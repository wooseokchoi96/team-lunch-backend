class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :text
      t.integer :user_id
      t.string :user_name
      t.integer :conversation_id

      t.timestamps
    end
  end
end
