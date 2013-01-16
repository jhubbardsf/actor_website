class ChangeAlbumColumn < ActiveRecord::Migration
  def up
    remove_column :admin_photos, :album

    change_table :admin_photos do |t|
      t.string :album
    end
  end

  def down
    remove_column :admin_photos, :album

    change_table :admin_photos do |t|
      t.integer :album
    end
  end
end
