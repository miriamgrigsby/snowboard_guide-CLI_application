class CreateTicketsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :resort, foreign_key: true
      t.string :name
      t.string :price
  end
  end
end
