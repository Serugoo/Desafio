class CreateScoreCourses < ActiveRecord::Migration
  def change
    create_table :score_courses do |t|
      t.references :enade, index: true
      t.references :course, index: true
      t.decimal :score

      t.timestamps
    end
  end
end
