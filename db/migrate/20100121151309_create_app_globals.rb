class CreateAppGlobals < ActiveRecord::Migration
  def self.up
    create_table :app_globals do |t|
      t.string :name
      t.text :value
      t.timestamps
    end
  end

  def self.down
    drop_table :app_globals
  end
end
