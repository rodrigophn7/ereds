class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :cpf
      t.string :rg
      t.string :endereco
      t.string :cidade
      t.string :estado
      t.string :como_conheceu
      t.string :tempo_interesse_tema
      t.string :ja_participou
      t.string :universidade
      t.string :curso
      t.string :inscricao

      t.timestamps
    end
  end
end
