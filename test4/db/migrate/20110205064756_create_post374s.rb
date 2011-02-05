class CreatePost374s < ActiveRecord::Migration
  def self.up
    create_table :post374s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post374s
  end
end
