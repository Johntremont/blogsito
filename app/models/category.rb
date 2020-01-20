class Category < ApplicationRecord

  has_and_belongs_to_many :articles
  
  validates :name, uniqueness: {message: "Ya existe una categoría con este nombre"},
    presence: { message: "El nombre de la categoría no puede quedar vacío"}
end
