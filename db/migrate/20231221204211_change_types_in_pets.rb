class ChangeTypesInPets < ActiveRecord::Migration[7.0]
  def change
    change_column :pets, :food, :string
    change_column :pets, :medicins, :string
  end
end
