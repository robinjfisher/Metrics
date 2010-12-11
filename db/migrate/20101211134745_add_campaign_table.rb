class AddCampaignTable < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.string :name
      t.text :notes
      t.date :start_date
      t.date :end_date
      t.float :spend_amount
    end
  end

  def self.down
    drop_table :campaigns
  end
end
