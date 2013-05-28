class ResetFeedAndAddMovies < ActiveRecord::Migration
  def change
    remove_column :feeds, :title
    remove_column :feeds, :active
    add_column    :feeds, :movies, :boolean
  end
end
