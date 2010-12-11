class CreateCampaignSignup < ActiveRecord::Migration
  def self.up
    create_table :campaign_signups do |t|
      t.integer :user_id
      t.integer :campaign_id
      t.timestamps
    end
  end

  def self.down
    drop_table :campaign_signups
  end
end
