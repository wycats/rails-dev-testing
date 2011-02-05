class CreatePost477s < ActiveRecord::Migration
  def self.up
    create_table :post477s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post477s
  end
end
