class User < ActiveRecord::Base
  
  def name
    self.first_name + " " + self.last_name
  end
  
  def lifetime_value
    # Calculation of lifetime value will depend on your transactional logic
    # Adopting a pattern of a User having a Subscription and a Subscription
    # having many Transactions, an example of this calculation is:
    # 
    # total = Array.new
    # self.subscription.transactions.each do |t|
    #   total << t.amount
    # end
    # total.inject{|sum,x| sum + x}
    
    60
  end
  
end
