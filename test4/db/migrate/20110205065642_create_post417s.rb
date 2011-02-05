class CreatePost417s < ActiveRecord::Migration
  def self.up
    create_table :post417s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post417s
  end
end
