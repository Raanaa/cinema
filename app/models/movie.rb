class Movie < ApplicationRecord
    has_many :movieactors
    has_many :actors, :through => :movieactors
    has_many :reviews
end
