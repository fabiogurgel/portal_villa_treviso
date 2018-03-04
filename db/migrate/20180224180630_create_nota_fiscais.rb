class CreateNotaFiscais < ActiveRecord::Migration[5.1]
  def change
    create_table :nota_fiscais do |t|
      t.references :pessoa, foreign_key: true
      t.integer :codigo
      t.integer :numero
      t.date :data
      t.float :valor
      t.integer :quantidade

      t.timestamps
    end
  end
end
