class CreatePost299s < ActiveRecord::Migration
  def self.up
    create_table :post299s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post299s
  end
end
