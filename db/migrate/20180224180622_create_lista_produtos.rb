class CreateListaProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :lista_produtos do |t|
      t.references :produto, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
