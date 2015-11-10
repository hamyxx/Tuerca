json.array!(@miembrotuercas) do |miembrotuerca|
  json.extract! miembrotuerca, :id, :nombre, :nick
  json.url miembrotuerca_url(miembrotuerca, format: :json)
end
