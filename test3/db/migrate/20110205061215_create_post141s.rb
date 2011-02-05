class CreatePost141s < ActiveRecord::Migration
  def self.up
    create_table :post141s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post141s
  end
end
