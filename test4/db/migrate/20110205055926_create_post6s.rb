class CreatePost6s < ActiveRecord::Migration
  def self.up
    create_table :post6s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post6s
  end
end
