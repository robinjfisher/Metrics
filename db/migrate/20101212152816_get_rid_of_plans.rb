class GetRidOfPlans < ActiveRecord::Migration
  def self.up
    drop_table :plans
  end

  def self.down
    create_table :plans do |t|
      t.string :name
      t.integer :price_cents
      t.timestamps
    end
  end
end
