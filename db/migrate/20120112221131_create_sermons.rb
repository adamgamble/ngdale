class CreateSermons < ActiveRecord::Migration
  def change
    create_table :sermons do |t|
      t.string :name
      t.string :preacher
      t.date :date
      t.string :sermon_file_name
      t.integer :sermon_file_size
      t.string :sermon_content_type

      t.timestamps
    end
  end
end
