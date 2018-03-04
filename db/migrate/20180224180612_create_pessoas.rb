class CreatePessoas < ActiveRecord::Migration[5.1]
  def change
    create_table :pessoas do |t|
      t.string :nome_razao_social
      t.bigint :cnpj
      t.bigint :cpf
      t.string :email
      t.string :site
      t.string :endereco
      t.int :numero
      t.string :bairro
      t.string :municipio
      t.string :uf
      t.int :cep
      t.bigint :telefone
      t.bigint :celular
      t.references :categoria, foreign_key: true

      t.timestamps
    end
  end
end
