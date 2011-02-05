class CreatePost467s < ActiveRecord::Migration
  def self.up
    create_table :post467s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post467s
  end
end
