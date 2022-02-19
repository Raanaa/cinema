class MoviesController < ApplicationController
    def index
        @movies = Movie.all

        if params[:sort]
            movies_hash = Hash.new
            @movies.each { |m| 
            # sort by average stars (sum of all stars / total num of reviews)
               p movies_hash[m] = m.reviews.pluck(:stars).sum / m.reviews.count
            }
            @movies = movies_hash.sort_by { |movie, stars| stars }.to_h.keys if params[:sort] == "asd"
            @movies = movies_hash.sort_by { |movie, stars| -stars }.to_h.keys if params[:sort] == "des"

        end
    end
end
