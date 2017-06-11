class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :video
      t.string :title
      t.text :description
      t.string :author
      t.string :url
      t.text :comment
      t.integer :like
      t.integer :dislike
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
