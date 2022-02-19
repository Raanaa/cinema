class UpdateMovieactor < ActiveRecord::Migration[5.2]
  def change
    add_reference :movieactors, :movie, foreign_key: true
    add_reference :movieactors, :actor, foreign_key: true
    add_index :movieactors, [:movie_id, :actor_id], unique: true
  end
end
