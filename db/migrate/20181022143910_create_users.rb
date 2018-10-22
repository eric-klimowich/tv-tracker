class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :bio
      t.string :location_state
      t.string :location_city

      t.timestamps
    end
  end
end
