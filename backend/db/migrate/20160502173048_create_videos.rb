class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :thumbnail
      t.string :link
      t.string :date
      t.boolean :live

      t.timestamps null: false
    end
  end
end
