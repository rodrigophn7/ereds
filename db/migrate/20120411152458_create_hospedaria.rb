class CreateHospedaria < ActiveRecord::Migration
  def change
    create_table :hospedaria do |t|
      t.string :nome
      t.string :tipo
      t.integer :qtd_vagas
      t.string :preferencia
      t.string :endereco

      t.timestamps
    end
  end
end
