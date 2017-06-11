class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.integer :like
      t.integer :dislike
      t.datetime :commented
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
