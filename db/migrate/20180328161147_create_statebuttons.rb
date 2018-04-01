class CreateStatebuttons < ActiveRecord::Migration[5.1]
  def change
    create_table :statebuttons do |t|
      t.bigint :data
      t.bigint :date
      t.bigint :message_id

      t.timestamps
    end

    add_reference :statebuttons, :chat, index: true
    add_foreign_key :statebuttons, :chats, column:chat_id, on_delete: :cascade
  end
end
