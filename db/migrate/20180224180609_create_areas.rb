class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :area do |t|
      t.string :codigo
      t.string :descricao

      t.timestamps
    end
  end
end
