class CreatePost246s < ActiveRecord::Migration
  def self.up
    create_table :post246s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post246s
  end
end
