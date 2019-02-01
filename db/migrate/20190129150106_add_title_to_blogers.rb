class AddTitleToBlogers < ActiveRecord::Migration[5.2]
  def change
    add_column :blogers, :title, :text
  end
end
