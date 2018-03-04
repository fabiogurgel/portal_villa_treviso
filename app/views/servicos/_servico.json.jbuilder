json.extract! servico, :id, :area_id, :descricao, :lista_produto_id, :data, :pessoa, :references, :created_at, :updated_at
json.url servico_url(servico, format: :json)
