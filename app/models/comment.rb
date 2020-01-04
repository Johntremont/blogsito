class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  has_rich_text :text

  validates :user, presence: true
end
