class CorrectTableOrderedDishes < ActiveRecord::Migration[6.1]
  def change
    remove_column :ordered_dishes, :user_id, :references
  end
end
