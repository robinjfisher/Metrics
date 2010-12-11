module Metrics
  
  class Campaign < ActiveRecord::Base
    
    validates :name, :presence => true
    validates :spend_amount, :presence => true
    
  end
  
end