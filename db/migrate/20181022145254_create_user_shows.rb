class CreateUserShows < ActiveRecord::Migration[5.2]
  def change
    create_table :user_shows do |t|
      t.integer :user_id
      t.integer :show_id
      t.string :status
      t.integer :season
      t.integer :episode

      t.timestamps
    end
  end
end
