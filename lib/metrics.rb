Dir.foreach("#{Rails.root}/lib/metrics/") do |f|
  if !f.is_a?(String) && f.basename =~ /rb/
    require File.join(f.dirname, f)
  end
end

module Metrics
  
end