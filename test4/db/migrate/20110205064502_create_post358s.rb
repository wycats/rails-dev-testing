class CreatePost358s < ActiveRecord::Migration
  def self.up
    create_table :post358s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post358s
  end
end
