class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.boolean :response, null: false, default: false

      t.timestamps
    end

    add_reference :requests, :chat, foreign_key: true
  end
end
