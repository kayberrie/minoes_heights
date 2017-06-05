class ServiceItem < ActiveRecord::Migration[5.0]
  def change
    create_table :service_items do |t|
      t.string :name
      t.string :price
      t.string :duration
      t.text :description

      t.timestamps
    end
  end
end
