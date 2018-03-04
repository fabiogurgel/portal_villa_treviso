json.extract! nota_fiscal, :id, :fornecedor_id, :codigo, :numero, :data, :valor, :quantidade, :created_at, :updated_at
json.url nota_fiscal_url(nota_fiscal, format: :json)
