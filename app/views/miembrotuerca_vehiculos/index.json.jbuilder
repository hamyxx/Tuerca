json.array!(@miembrotuerca_vehiculos) do |miembrotuerca_vehiculo|
  json.extract! miembrotuerca_vehiculo, :id, :miembrotuerca_id, :vehiculos_id
  json.url miembrotuerca_vehiculo_url(miembrotuerca_vehiculo, format: :json)
end
