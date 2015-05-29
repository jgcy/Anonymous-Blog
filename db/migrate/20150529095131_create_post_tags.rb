class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |pt|
      pt.integer :tag_id
      pt.integer :post_id
      pt.timestamps
    end
  end
end
