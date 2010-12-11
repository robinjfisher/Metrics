class User < ActiveRecord::Base
  
  def name
    self.first_name + " " + self.last_name
  end
  
  def lifetime_value
    678.00
  end
  
end
