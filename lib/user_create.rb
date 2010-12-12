require 'user'
require 'metrics/campaign_signup'

names = ["Alan Jones","Bob Stevens","Chris Kent","David Hyatt","Eric King","Fred Flintstone","George Jungle","Harry Henderson","Ian Dale","Jeff Veen","Keith Chegwin","Lembit Opik","Mike Jackson","Noel Edmonds","Owen Lassiter","Pete Doherty","Quahog Times","Rob Redford","Steve Smith","Tiger Woods","Ukelele Flute","Viv Anderson","Wally Waldo","Xavier Jones","Yun To Wong","Zebedee Zooda"]
campaigns = [1,3,4,5]

(1..100).each do |x|
  u = User.new
  name = names[rand(names.size)]
  u.first_name = name.split(" ")[0]
  u.last_name = name.split(" ")[1]
  u.email = name.sub(/ /,"") << "@gmail.com"
  u.save
  
  c = Metrics::CampaignSignup.new
  c.user_id = u.id
  c.campaign_id = campaigns[rand(campaigns.size)]
  c.save
  
end