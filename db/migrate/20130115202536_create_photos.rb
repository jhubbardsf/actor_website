class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption
      t.integer :user_id
      t.string :album

      t.timestamps
    end
  end
end
