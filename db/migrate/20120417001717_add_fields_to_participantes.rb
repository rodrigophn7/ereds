class AddFieldsToParticipantes < ActiveRecord::Migration
  def change
    add_column :participantes, :profissao, :string

    add_column :participantes, :quando_chega, :datetime

    add_column :participantes, :hospedarium_id, :integer

  end
end
