class CreatePost94s < ActiveRecord::Migration
  def self.up
    create_table :post94s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post94s
  end
end
