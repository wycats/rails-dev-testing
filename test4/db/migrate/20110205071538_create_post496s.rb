class CreatePost496s < ActiveRecord::Migration
  def self.up
    create_table :post496s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post496s
  end
end
