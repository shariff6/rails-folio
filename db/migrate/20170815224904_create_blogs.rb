class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.column :title, :string
      t.column :blog, :string
      t.timestamps
    end
  end
end
