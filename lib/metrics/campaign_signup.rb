module Metrics
  
  class CampaignSignup < ActiveRecord::Base
    
    belongs_to :campaign, :class_name => "Metrics::Campaign", :foreign_key => "campaign_id"
    belongs_to :user, :class_name => "User", :foreign_key => "user_id"
    
  end
  
end