class CreateAdminBlogPosts < ActiveRecord::Migration
  def change
    create_table :admin_blog_posts do |t|
      t.string :title
      t.string :article
      t.integer :user_id

      t.timestamps
    end
  end
end
