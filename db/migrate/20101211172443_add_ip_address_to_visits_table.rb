class AddIpAddressToVisitsTable < ActiveRecord::Migration
  def self.up
    add_column :campaign_visits, :request_ip, :string
  end

  def self.down
    remove_column :campaign_visits, :request_ip
  end
end
