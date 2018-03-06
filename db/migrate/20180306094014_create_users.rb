class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.datetime :date
      t.bigint :telegram_id
      t.bigint :message_id
      t.string :text

      t.timestamps
    end
  end
end
