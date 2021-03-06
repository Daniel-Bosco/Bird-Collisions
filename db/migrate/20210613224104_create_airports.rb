class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :category
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
