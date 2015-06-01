json.array!(@pigeons) do |pigeon|
  json.extract! pigeon, :id, :name, :matr, :year
  json.url pigeon_url(pigeon, format: :json)
end
