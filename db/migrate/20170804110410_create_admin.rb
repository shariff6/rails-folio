class CreateAdmin < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.column :name, :string
      t.column :title, :string

      t.timestamps
    end
  end
end
