class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.datetime :date
      t.string :description
      t.references :user, foreign_key: true
      t.references :drug, foreign_key: true

      t.timestamps
    end
  end
end
