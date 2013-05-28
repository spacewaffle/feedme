class AddStuffToFeeds < ActiveRecord::Migration
  def change
    add_column :feeds, :title, :string
    add_column :feeds, :active, :boolean
  end
end
