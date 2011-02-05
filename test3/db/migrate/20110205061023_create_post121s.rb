class CreatePost121s < ActiveRecord::Migration
  def self.up
    create_table :post121s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post121s
  end
end
