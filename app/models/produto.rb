class Produto < ApplicationRecord
  belongs_to :categoria
  belongs_to :fornecedor
end
