class CreatePost332s < ActiveRecord::Migration
  def self.up
    create_table :post332s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post332s
  end
end
