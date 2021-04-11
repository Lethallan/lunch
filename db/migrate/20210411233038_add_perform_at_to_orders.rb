class AddPerformAtToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :perform_at, :datetime
  end
end
