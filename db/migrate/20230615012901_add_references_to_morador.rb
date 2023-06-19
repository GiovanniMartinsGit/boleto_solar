class AddReferencesToMorador < ActiveRecord::Migration[5.2]
  def change
    add_reference :moradores, :imovel, foreign_key: true
  end
end
