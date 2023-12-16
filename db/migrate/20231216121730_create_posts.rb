class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string:"title"
      t.string:"start"
      t.string:"finish"
      t.boolean "allday"
      t.string "note"


      t.timestamps
    end
  end
end
