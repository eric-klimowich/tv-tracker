class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :seasons
      t.boolean :status
      t.string :lead_actor
      t.string :genre
      t.string :description

      t.timestamps
    end
  end
end
