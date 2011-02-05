class CreatePost447s < ActiveRecord::Migration
  def self.up
    create_table :post447s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post447s
  end
end
