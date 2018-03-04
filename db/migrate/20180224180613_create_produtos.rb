class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.references :categoria, foreign_key: true
      t.references :pessoa, foreign_key: true
      t.string :descricao
      t.float :valor
      t.integer :quant_minima
      t.string :unidade

      t.timestamps
    end
  end
end
