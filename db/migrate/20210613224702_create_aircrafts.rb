class CreateAircrafts < ActiveRecord::Migration[6.1]
  def change
    create_table :aircrafts do |t|
      t.string :category
      t.string :certification
      t.string :model

      t.timestamps
    end
  end
end
