class AddVisitIdToParticipante < ActiveRecord::Migration
  def change
    add_column :participantes, :visit_id, :integer

  end
end
