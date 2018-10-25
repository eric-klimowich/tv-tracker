class AddWatchedOnColumnToUserShows < ActiveRecord::Migration[5.2]
  def change
    add_column :user_shows, :watched_on, :string
  end
end
