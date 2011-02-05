class CreatePost75s < ActiveRecord::Migration
  def self.up
    create_table :post75s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post75s
  end
end
