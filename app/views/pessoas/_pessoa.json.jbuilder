json.extract! pessoa, :id, :nome_razao_social, :cnpj, :cpf, :email, :site, :endereco, :numero, :bairro, :municipio, :uf, :cep, :telefone, :celular, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
