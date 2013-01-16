class CreateAdminPhotos < ActiveRecord::Migration
  def change
    create_table :admin_photos do |t|
      t.string :caption
      t.integer :user_id
      t.integer :album

      t.timestamps
    end
  end
end
