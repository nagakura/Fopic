class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.binary :picture_data
      t.string :content_type
      t.string :explanation

      t.timestamps
    end
  end
end
