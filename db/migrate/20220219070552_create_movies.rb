class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.integer :year
      t.string :director
      t.string :filming_location
      t.string :country

      t.timestamps
    end
  end
end
