class CreateAdminLinks < ActiveRecord::Migration
  def change
    create_table :admin_links do |t|
      t.string :link
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
