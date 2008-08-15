class CreatePerks < ActiveRecord::Migration
  def self.up
    create_table :perks do |t|
      t.string :phrase
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :perks
  end
end
