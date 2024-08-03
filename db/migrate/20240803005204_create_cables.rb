class CreateCables < ActiveRecord::Migration[7.0]
  def change
    create_table :cables do |t|
      t.string :tag
      t.integer :conduit_id
      t.integer :conductors
      t.string :size
      t.float :od

      t.timestamps
    end
  end
end
