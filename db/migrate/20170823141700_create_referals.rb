class CreateReferals < ActiveRecord::Migration[5.1]
  def change
    create_table :referals do |t|
      t.column :name, :string
      t.column :reference, :string
      t.column :institution, :string
      t.timestamps
    end
  end
end
