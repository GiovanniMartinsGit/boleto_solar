class CreateMoradores < ActiveRecord::Migration[5.2]
  def change
    create_table :moradores do |t|
      t.string :cpf
      t.string :nome

      t.timestamps
    end
  end
end
