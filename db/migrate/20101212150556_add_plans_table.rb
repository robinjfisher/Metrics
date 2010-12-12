class AddPlansTable < ActiveRecord::Migration
  def self.up
    create_table :plans do |t|
      t.string :name
      t.integer :price_cents
      t.timestamps
    end
  end

  def self.down
    drop_table :plans
  end
end
