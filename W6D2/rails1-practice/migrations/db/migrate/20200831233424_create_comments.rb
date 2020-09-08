class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :video_id, null: false #idx
      t.integer :commenter_id, null: false #idx
      t.integer :parent_comment_id #idx

      t.timestamps
    end

    add_index :comments, :video_id
    add_index :comments, :commenter_id
    add_index :comments, :parent_comment_id

    rename_column :users, :email, :username
    remove_column :users, :bio

    rename_column :videos, :name, :title

    add_index :videos, :uploader_id

  end
end
