class CreatePost149s < ActiveRecord::Migration
  def self.up
    create_table :post149s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post149s
  end
end
