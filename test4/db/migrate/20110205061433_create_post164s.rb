class CreatePost164s < ActiveRecord::Migration
  def self.up
    create_table :post164s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post164s
  end
end
