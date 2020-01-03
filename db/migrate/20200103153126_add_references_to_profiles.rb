class AddReferencesToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_reference :profiles, :Article, foreign_key: true
    add_reference :profiles, :Comment, foreign_key: true
  end
end
