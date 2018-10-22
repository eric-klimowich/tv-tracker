class CreateShowPlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :show_platforms do |t|
      t.integer :platform_id
      t.integer :show_id

      t.timestamps
    end
  end
end
