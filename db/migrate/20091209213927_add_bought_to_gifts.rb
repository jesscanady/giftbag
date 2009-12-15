class AddBoughtToGifts < ActiveRecord::Migration
  def self.up
    add_column :gifts, :bought, :boolean
  end

  def self.down
    remove_column :gifts, :bought
  end
end
