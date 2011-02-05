class CreatePost444s < ActiveRecord::Migration
  def self.up
    create_table :post444s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post444s
  end
end
