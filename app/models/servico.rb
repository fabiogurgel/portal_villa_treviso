class Servico < ApplicationRecord
  belongs_to :area
  belongs_to :lista_produto
end
