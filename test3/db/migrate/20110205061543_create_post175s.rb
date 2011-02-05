class CreatePost175s < ActiveRecord::Migration
  def self.up
    create_table :post175s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post175s
  end
end
