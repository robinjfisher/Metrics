class Metrics::CampaignsController < ApplicationController
  
  layout 'metrics'
  
  def index
    @campaigns = Metrics::Campaign.all
  end
  
  def new
    @campaign = Metrics::Campaign.new
  end
  
end