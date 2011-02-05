class CreatePost302s < ActiveRecord::Migration
  def self.up
    create_table :post302s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post302s
  end
end
