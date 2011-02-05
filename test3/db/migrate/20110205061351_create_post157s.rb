class CreatePost157s < ActiveRecord::Migration
  def self.up
    create_table :post157s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post157s
  end
end
