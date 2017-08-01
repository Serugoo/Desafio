class CreateScoreGenerals < ActiveRecord::Migration
  def change
    create_table :score_generals do |t|
      t.references :enade, index: true
      t.references :institution, index: true
      t.decimal :score

      t.timestamps
    end
  end
end
