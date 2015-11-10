json.array!(@recomendaciones) do |recomendacione|
  json.extract! recomendacione, :id, :tipo, :taller, :ubicacion, :comentario, :usuario_id
  json.url recomendacione_url(recomendacione, format: :json)
end
