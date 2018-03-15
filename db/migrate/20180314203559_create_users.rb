class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.bigint :data
      t.bigint :date
      t.bigint :chat_id
      t.bigint :message_id

      t.timestamps
    end
  end
end
