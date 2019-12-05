class CreateLessonsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.references :resort, foreign_key: true
      t.string :name
      t.string :price
  end
  end
end
