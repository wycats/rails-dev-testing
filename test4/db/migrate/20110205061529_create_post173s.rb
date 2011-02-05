class CreatePost173s < ActiveRecord::Migration
  def self.up
    create_table :post173s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post173s
  end
end
