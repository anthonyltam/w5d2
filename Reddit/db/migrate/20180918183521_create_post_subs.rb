class CreatePostSubs < ActiveRecord::Migration[5.2]
  def change
    create_join_table :posts, :subs do |t|
      t.index :post_id
      t.index :sub_id
      
      t.timestamps
    end
  end
end
