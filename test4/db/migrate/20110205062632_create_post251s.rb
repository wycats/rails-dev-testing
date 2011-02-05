class CreatePost251s < ActiveRecord::Migration
  def self.up
    create_table :post251s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post251s
  end
end
