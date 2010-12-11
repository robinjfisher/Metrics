class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  before_filter :set_cookie_and_record_visit
  
  private
  
  def set_cookie_and_record_visit
    if params[:cid] && Metrics::Campaign.find_by_id(params[:cid]) && !Metrics::CampaignVisit.find_by_request_ip(request.remote_ip)
      if !cookies['metrics_campaign_id']
        cookies['metrics_campaign_id'] = "#{params[:cid]}"
        Metrics::CampaignVisit.create(:campaign_id => params[:cid], :request_ip => request.remote_ip)
      end
    end
  end
  
end
