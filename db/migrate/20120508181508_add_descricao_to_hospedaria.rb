class AddDescricaoToHospedaria < ActiveRecord::Migration
  def change
    add_column :hospedaria, :descricao, :string

  end
end
