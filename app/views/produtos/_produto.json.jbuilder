json.extract! produto, :id, :categoria_id, :fornecedor_id, :descricao, :valor, :quant_minima, :unidade, :created_at, :updated_at
json.url produto_url(produto, format: :json)
