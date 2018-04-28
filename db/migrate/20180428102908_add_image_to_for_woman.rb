class AddImageToForWoman < ActiveRecord::Migration[5.1]
  def change
    add_column :for_women, :womanavtr, :string
  end
end
