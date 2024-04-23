class Tag < ApplicationRecord
    has_many :posts
    validates :name, presence: { message: "This field can't be blank" }, uniqueness: { message: "This tag is already in use" }

    has_many :post_tags
    has_many :posts, through: :post_tags
end