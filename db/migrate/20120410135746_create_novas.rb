class CreateNovas < ActiveRecord::Migration
  def change
    create_table :novas do |t|
      t.string :titulo
      t.text :corpo
      t.references :usuario

      t.timestamps
    end
    add_index :novas, :usuario_id
  end
end
