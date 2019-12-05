class CreateUserResortsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_resorts do |t|
      t.references :user, foreign_key: true 
      t.references :resort, foreign_key: true
    end
  end
end
