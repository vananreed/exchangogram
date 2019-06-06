class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :caption, null: false
      t.string :photo, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
