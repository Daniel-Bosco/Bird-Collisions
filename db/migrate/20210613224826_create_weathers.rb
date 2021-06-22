class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.float :celsius_temperature
      t.float :humidity
      t.float :wind_speed
      t.float :average_rainfall
      t.float :insolation

      t.timestamps
    end
  end
end
