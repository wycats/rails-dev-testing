class CreatePost180s < ActiveRecord::Migration
  def self.up
    create_table :post180s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post180s
  end
end
