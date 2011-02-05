class CreatePost63s < ActiveRecord::Migration
  def self.up
    create_table :post63s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post63s
  end
end
