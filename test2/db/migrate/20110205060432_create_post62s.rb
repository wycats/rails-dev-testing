class CreatePost62s < ActiveRecord::Migration
  def self.up
    create_table :post62s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post62s
  end
end
