json.extract! weather, :id, :celsius_temperature, :humidity, :wind_speed, :average_rainfall, :insolation, :created_at, :updated_at
json.url weather_url(weather, format: :json)
