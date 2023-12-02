class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :title
      t.binary :picture
      t.string :owner
      t.integer :owner_id
      t.string :breed
      t.integer :age
      t.integer :weight
      t.integer :disease
      t.integer :medicins
      t.integer :food
      t.datetime :date_in
      t.datetime :date_out
      t.string :keeper
      t.text :description

      t.timestamps
    end
  end
end
