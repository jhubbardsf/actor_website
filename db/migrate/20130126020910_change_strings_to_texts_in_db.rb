class ChangeStringsToTextsInDb < ActiveRecord::Migration
  def up
    change_column :admin_blog_posts, :article, :text, :limit => nil
    change_column :admin_links, :description, :text, :limit => nil
  end

  def down
    change_column :admin_blog_posts, :article, :string
    change_column :admin_links, :description, :string
  end
end
