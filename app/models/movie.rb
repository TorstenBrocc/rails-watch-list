class Movie < ApplicationRecord
    # title is unique (FAILED - 5)
    # title cannot be blank (FAILED - 6)
    validates :title, uniqueness: true, presence: true
    
    # overview cannot be blank (FAILED - 7)
    validates :overview, presence: true
    # has many bookmarks (FAILED - 8)
    has_many :bookmarks
    # should not be able to destroy self if has bookmarks children (FAILED - 9)
    has_many :movies

  
  
end
