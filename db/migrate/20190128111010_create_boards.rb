class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :image
      t.string :category
      t.string :status
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
