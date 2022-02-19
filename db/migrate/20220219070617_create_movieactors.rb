class CreateMovieactors < ActiveRecord::Migration[5.2]
  def change
    create_table :movieactors do |t|

      t.timestamps
    end
  end
end
