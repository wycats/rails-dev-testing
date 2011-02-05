class CreatePost307s < ActiveRecord::Migration
  def self.up
    create_table :post307s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post307s
  end
end
