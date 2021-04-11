class AddPictureToDishes < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :picture, :string
  end
end
