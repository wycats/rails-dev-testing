class CreatePost401s < ActiveRecord::Migration
  def self.up
    create_table :post401s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post401s
  end
end
