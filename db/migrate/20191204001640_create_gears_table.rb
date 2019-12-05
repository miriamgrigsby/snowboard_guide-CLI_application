class CreateGearsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      t.references :resort, foreign_key: true
      t.string :list
      t.string :link
  end
  end
end
