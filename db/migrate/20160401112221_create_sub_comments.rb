class CreateSubComments < ActiveRecord::Migration
  def change
    create_table :sub_comments do |t|
      t.text 	   :body
      t.integer    :user_id,    index: true
      t.integer	   :comment_id, index: true
      t.timestamps null: false
    end
  end
end
