class CreateDrugs < ActiveRecord::Migration[5.1]
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :description
      t.string :posology

      t.timestamps
    end
  end
end
