class CreateServicos < ActiveRecord::Migration[5.1]
  def change
    create_table :servicos do |t|
      t.references :area, foreign_key: true
      t.references :pessoa, foreign_key: true
      t.references :lista_produto, foreign_key: true
      t.string :descricao
      t.date :data

      t.timestamps
    end
  end
end
