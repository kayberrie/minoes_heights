class Bookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :date
      t.boolean :accepted
      t.text :note

      t.timestamps
    end
  end
end
