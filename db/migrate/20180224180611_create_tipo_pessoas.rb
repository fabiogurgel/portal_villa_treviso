class CreateTipoPessoas < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_pessoa do |t|
      t.integer :codigo
      t.string :descricao
      t.boolean :ativo

      t.timestamps
    end
  end
end
