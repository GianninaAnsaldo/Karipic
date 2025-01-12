class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.string :image
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
