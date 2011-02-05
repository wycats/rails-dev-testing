class CreatePost464s < ActiveRecord::Migration
  def self.up
    create_table :post464s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post464s
  end
end
