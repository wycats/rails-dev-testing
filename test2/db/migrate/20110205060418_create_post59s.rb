class CreatePost59s < ActiveRecord::Migration
  def self.up
    create_table :post59s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post59s
  end
end
