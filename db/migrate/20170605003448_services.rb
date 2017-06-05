class Services < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :user_id
      t.text :description

      t.timestamps
    end
  end
end
