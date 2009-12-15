class CreateGifts < ActiveRecord::Migration
  def self.up
    create_table :gifts do |t|
      t.integer     :person_id, :null => false
      t.string  :name, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :gifts
  end
end
