class AddServiceIdToServiceItems < ActiveRecord::Migration[5.0]
  def change
    add_column :service_items, :service_id, :integer
  end
end
