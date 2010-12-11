module Metrics
  
  class Campaign < ActiveRecord::Base
    
    validates :name, :presence => true
    validates :spend_amount, :presence => true
    
    has_many :campaign_signups
    
    def revenue
      total = Array.new
      self.campaign_signups.each do |signup|
        total << signup.user.lifetime_value
      end
      total.inject{|sum,x| sum + x}
    end
    
    def roi
      ((self.revenue - self.spend_amount) / self.spend_amount) * 100
    end
    
  end
  
end