class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.bigint :telegram_chat_number

      t.timestamps
    end

    add_reference :chats, :user, foreign_key: true
  end
end
