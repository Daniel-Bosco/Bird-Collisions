class CreateCollisions < ActiveRecord::Migration[6.1]
  def change
    create_table :collisions do |t|
      t.references :bird, null: false, foreign_key: true
      t.references :datum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
