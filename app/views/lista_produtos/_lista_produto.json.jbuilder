json.extract! lista_produto, :id, :produto_id, :quantidade, :created_at, :updated_at
json.url lista_produto_url(lista_produto, format: :json)
