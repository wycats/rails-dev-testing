class CreatePost42s < ActiveRecord::Migration
  def self.up
    create_table :post42s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post42s
  end
end
