class CreateButtons < ActiveRecord::Migration[5.1]
  def change
    create_table :buttons do |t|
      t.string :name
      t.text :description
      t.string :button_value

      t.timestamps
    end
  end
end
