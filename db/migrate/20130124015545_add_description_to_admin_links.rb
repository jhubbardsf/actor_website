class AddDescriptionToAdminLinks < ActiveRecord::Migration
  def self.up
    add_column :admin_links, :description, :string
  end

  def self.down
    remove_column :admin_links, :description
  end
end
