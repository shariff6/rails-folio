class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.column :admin_id, :integer
      t.column :title, :string
      t.column :link, :string
      t.column :technology, :string
    end
  end
end
