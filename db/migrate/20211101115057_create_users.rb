class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.references :exam, null: true, foreign_key: true

      t.timestamps
    end
  end
end