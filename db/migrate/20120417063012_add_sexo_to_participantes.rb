class AddSexoToParticipantes < ActiveRecord::Migration
  def change
    add_column :participantes, :sexo, :string

  end
end
