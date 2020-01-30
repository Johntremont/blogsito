class Article < ApplicationRecord
    belongs_to :user

    has_and_belongs_to_many :categories


    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_rich_text :text
    
    validates :title, presence: true,
    length: { minimum: 5 }
    validates :text, presence: true,
    length: { minimum: 5 }             

    validates :categories, presence: true
    validates :user, presence: true

    accepts_nested_attributes_for :categories
end
