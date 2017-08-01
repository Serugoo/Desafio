class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.references :course, index: true

      t.timestamps
    end
  end
end
