class CreateScoreStudents < ActiveRecord::Migration
  def change
    create_table :score_students do |t|
      t.references :enade, index: true
      t.references :student, index: true
      t.decimal :score

      t.timestamps
    end
  end
end
