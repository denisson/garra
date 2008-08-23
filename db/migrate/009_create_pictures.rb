class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.integer :size
      t.string :content_type
      t.string :filename
      t.integer :width
      t.integer :height
      t.integer :parent_id
      t.string :thumbnail
      t.boolean :allowed
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
