class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :number
      t.references :contact, foreign_key: true#, null: false

      t.timestamps
    end
  end
end
