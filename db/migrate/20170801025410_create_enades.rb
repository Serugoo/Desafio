class CreateEnades < ActiveRecord::Migration
  def change
    create_table :enades do |t|
      t.integer :year

      t.timestamps
    end
  end
end
