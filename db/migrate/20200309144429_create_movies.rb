class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :image_url
      t.integer :runtime_in_minutes
      t.date :release_date
      t.string :description

      t.timestamps
    end
  end
end
