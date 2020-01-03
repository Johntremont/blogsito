class AddUserRefToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_reference :profiles, :User, foreign_key: true
  end
end
