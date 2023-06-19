json.extract! imovel, :id, :endereco, :morador_id, :created_at, :updated_at
json.url imovel_url(imovel, format: :json)
