class CreatePost126s < ActiveRecord::Migration
  def self.up
    create_table :post126s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post126s
  end
end
