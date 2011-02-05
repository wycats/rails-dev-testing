class CreatePost339s < ActiveRecord::Migration
  def self.up
    create_table :post339s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post339s
  end
end
