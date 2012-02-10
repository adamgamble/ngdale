class CreateCarouselImages < ActiveRecord::Migration
  def change
    create_table :carousel_images do |t|
      t.string :header
      t.string :caption
      t.string :image_file_name

      t.timestamps
    end
  end
end
