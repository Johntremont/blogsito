class Article < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_rich_text :text
    
    validates :title, presence: true,
                      length: { minimum: 5 }
    validates :text, presence: true,
                      length: { minimum: 5 }                  
    validates :user, presence: true

end
