class CreatePost321s < ActiveRecord::Migration
  def self.up
    create_table :post321s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post321s
  end
end
