class ChangePetAttributeToBoolean < ActiveRecord::Migration[7.0]
  def change
    remove_column :pets, :disease, :string 
    add_column :pets, :vaccinated, :boolean 
  end
end
