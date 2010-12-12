require 'metrics/campaign_visit'

campaigns = [1,3,4,5]

(1..1000).each do |x|
  c = Metrics::CampaignVisit.new
  c.campaign_id = campaigns[rand(campaigns.size)]
  c.created_at = Time.now - rand(2678400)
  c.save
end