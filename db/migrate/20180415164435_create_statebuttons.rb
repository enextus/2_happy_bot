class CreateStatebuttons < ActiveRecord::Migration[5.1]
  def change
    create_table :statebuttons do |t|
      t.bigint :data
      t.bigint :date
      t.bigint :message_id

      t.timestamps
    end

    add_reference :statebuttons, :chat, foreign_key: true
  end
end
