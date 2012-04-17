class RemoveFieldsFromParticipantes < ActiveRecord::Migration
  def up
    remove_column :participantes, :tempo_interesse_tema
      end

  def down
    add_column :participantes, :tempo_interesse_tema, :string
  end
end
