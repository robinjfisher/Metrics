module Metrics
  
  class CampaignVisit < ActiveRecord::Base
    
    belongs_to :campaign, :class_name => "Metrics::Campaign", :foreign_key => "campaign_id"
    
  end
  
end