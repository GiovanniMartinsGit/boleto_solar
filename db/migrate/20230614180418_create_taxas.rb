class CreateTaxas < ActiveRecord::Migration[5.2]
  def change
    create_table :taxas do |t|
      t.float :valor_kwh
      t.float :valor_bandeira

      t.timestamps
    end
  end
end
