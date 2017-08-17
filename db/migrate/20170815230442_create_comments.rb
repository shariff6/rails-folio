class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :name, :string
      t.column :comment, :string
      t.column :blog_id, :int
      t.timestamps
    end
  end
end
