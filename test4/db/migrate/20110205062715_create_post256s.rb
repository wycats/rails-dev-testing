class CreatePost256s < ActiveRecord::Migration
  def self.up
    create_table :post256s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post256s
  end
end
