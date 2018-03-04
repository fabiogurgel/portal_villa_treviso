class CreateSubAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_areas do |t|
      t.references :area, foreign_key: true
      t.integer :codigo
      t.string :descricao
      # t.references :produto, foreign_key: true

      t.timestamps
    end
  end
end
