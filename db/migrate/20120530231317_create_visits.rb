class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :place
      t.text :description
      t.integer :qtd

      t.timestamps
    end
  end
end
