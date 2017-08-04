class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.column :admin_id, :integer
      t.column :skill, :string
      t.column :mastery, :string
    end
  end
end
