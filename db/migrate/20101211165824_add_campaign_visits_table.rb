class AddCampaignVisitsTable < ActiveRecord::Migration
  def self.up
    create_table :campaign_visits do |t|
      t.integer :campaign_id
      t.timestamps
    end
  end

  def self.down
    drop_table :campaign_visits
  end
end
