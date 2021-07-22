class List < ApplicationRecord
    # name cannot be blank (FAILED - 3)
    # name is unique (FAILED - 4)
    validates :name, presence: true, uniqueness: true
    # has many bookmarks (FAILED - 5)
    # should destroy child saved movies when destroying self (FAILED - 7)
    has_many :bookmarks, dependent: :destroy
    # has many movies (FAILED - 6)
    has_many :movies, through: :bookmarks
    has_many :reviews
    has_one_attached :photo
    

end
