class ChangeBioToTextDb < ActiveRecord::Migration
  def self.up
    change_column :users, :biography, :text, :limit => nil
  end

  def self.down
    change_column :users, :biography, :string
  end
end
