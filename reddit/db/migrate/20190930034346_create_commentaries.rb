class CreateCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaries do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.string :body

      t.timestamps
    end
  end
end
