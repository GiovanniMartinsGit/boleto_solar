class Leitura < ApplicationRecord
  belongs_to :imovel

  def valor_fatura
    kwh = Taxa.last.valor_kwh
    @valor_total = self.valor * kwh
  end

end
