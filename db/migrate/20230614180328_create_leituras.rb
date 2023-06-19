class CreateLeituras < ActiveRecord::Migration[5.2]
  def change
    create_table :leituras do |t|
      t.float :valor
      t.date :data
      t.references :imovel, foreign_key: true

      t.timestamps
    end
  end
end
