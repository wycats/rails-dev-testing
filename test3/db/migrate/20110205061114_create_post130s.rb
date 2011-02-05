class CreatePost130s < ActiveRecord::Migration
  def self.up
    create_table :post130s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post130s
  end
end
