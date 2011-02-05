class CreatePost397s < ActiveRecord::Migration
  def self.up
    create_table :post397s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post397s
  end
end
