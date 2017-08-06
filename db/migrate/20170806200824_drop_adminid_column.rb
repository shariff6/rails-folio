class DropAdminidColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column(:projects, :admin_id, :integer)
    remove_column(:skills, :admin_id, :integer)
  end
end
