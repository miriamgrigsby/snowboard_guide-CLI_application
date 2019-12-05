class CreateHotelsTable < ActiveRecord::Migration[6.0]
  def change
      create_table :hotels do |t|
        t.references :resort, foreign_key: true
        t.string :name
        t.string :price
        t.float :rating
        t.string :link
    end
  end
end
