class RemoveQuandoChegaFromParticipantes < ActiveRecord::Migration
  def up
    remove_column :participantes, :quando_chega
      end

  def down
    add_column :participantes, :quando_chega, :datetime
  end
end
