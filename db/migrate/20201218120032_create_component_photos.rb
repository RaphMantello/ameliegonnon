class CreateComponentPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :component_photos do |t|
      t.string :name

      t.timestamps
    end
  end
end
