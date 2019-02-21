class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :support_centers, :type, :type_of_center
  end
end
