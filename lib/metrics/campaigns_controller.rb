class Metrics::CampaignsController < ApplicationController
  
  layout 'metrics'
  
  def index
    @campaigns = Metrics::Campaign.all
  end
  
end