class CreateCategorias < ActiveRecord::Migration[5.1]
  def change
    create_table :categoria_produto do |t|
      t.integer :codigo
      t.string :descricao

      t.timestamps
    end
  end
end
