class AddTimestampsToCampaigns < ActiveRecord::Migration
  def self.up
    add_column :campaigns, :created_at, :datetime
    add_column :campaigns, :updated_at, :datetime
  end

  def self.down
    remove_column :campaigns, :created_at
    remove_column :campaigns, :updated_at
  end
end
