class CreatePost134s < ActiveRecord::Migration
  def self.up
    create_table :post134s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post134s
  end
end
