class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.references :contact, foreign_key: true#, null: false

      t.timestamps
    end
  end
end
