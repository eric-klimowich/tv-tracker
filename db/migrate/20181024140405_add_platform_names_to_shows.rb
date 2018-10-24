class AddPlatformNamesToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :netflix, :boolean
    add_column :shows, :prime, :boolean
    add_column :shows, :hbo, :boolean
    add_column :shows, :hulu, :boolean

  end
end
