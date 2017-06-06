class AddServiceCategoryToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :service_category, :integer
  end
end
