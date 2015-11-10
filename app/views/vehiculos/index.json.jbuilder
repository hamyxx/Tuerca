json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :marca, :modelo
  json.url vehiculo_url(vehiculo, format: :json)
end
