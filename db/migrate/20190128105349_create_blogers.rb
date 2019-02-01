class CreateBlogers < ActiveRecord::Migration[5.2]
  def change
    create_table :blogers do |t|
      t.string      :name
      t.text        :text
      t.integer     :user_id
      t.timestamps null:true
    end
  end
end
