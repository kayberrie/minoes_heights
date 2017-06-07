class Reviews < ActiveRecord::Migration[5.0]

  def change
    create_table :reviews do |t|
      t.string :date
      t.text :comment

      t.timestamps
    end
  end

end
