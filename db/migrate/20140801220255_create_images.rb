class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
    create_table :tags do |t|
      t.string :tag

      t.timestamps
    end

    create_table :tags_images, id: false do |t|
      t.belongs_to :tag
      t.belongs_to :image
    end
  end
end
