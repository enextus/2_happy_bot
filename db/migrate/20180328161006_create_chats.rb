class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.integer :chat_id

      t.timestamps
    end

    add_reference :chats, :user, index: true
    add_foreign_key :chats, :users, column: :user_id, on_delete: :cascade
  end
end
