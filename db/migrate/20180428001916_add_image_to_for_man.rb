class AddImageToForMan < ActiveRecord::Migration[5.1]
  def change
    add_column :for_men, :avatar, :string
  end
end
