class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :name, uniqueness: {message: "Ya existe una categoría con este nombre"},
    presence: { message: "El nombre de la categoría no puede quedar vacío"}
end
