class CreateImoveis < ActiveRecord::Migration[5.2]
  def change
    create_table :imoveis do |t|
      t.string :endereco
      t.references :morador, foreign_key: true

      t.timestamps
    end
  end
end
