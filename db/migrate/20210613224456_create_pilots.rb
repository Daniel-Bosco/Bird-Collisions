class CreatePilots < ActiveRecord::Migration[6.1]
  def change
    create_table :pilots do |t|
      t.string :first_name
      t.string :last_name
      t.string :privilege_level
      t.integer :document
      t.date :birth_date

      t.timestamps
    end
  end
end
