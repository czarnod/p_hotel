require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  setup do
    @pet = pets(:one)
  end

  test "visiting the index" do
    visit pets_url
    assert_selector "h1", text: "Pets"
  end

  test "should create pet" do
    visit pets_url
    click_on "New pet"

    fill_in "Age", with: @pet.age
    fill_in "Breed", with: @pet.breed
    fill_in "Date in", with: @pet.date_in
    fill_in "Date out", with: @pet.date_out
    fill_in "Description", with: @pet.description
    fill_in "Disease", with: @pet.disease
    fill_in "Food", with: @pet.food
    fill_in "Keeper", with: @pet.keeper
    fill_in "Medicins", with: @pet.medicins
    fill_in "Owner", with: @pet.owner
    fill_in "Owner", with: @pet.owner_id
    fill_in "Picture", with: @pet.picture
    fill_in "Title", with: @pet.title
    fill_in "Weight", with: @pet.weight
    click_on "Create Pet"

    assert_text "Pet was successfully created"
    click_on "Back"
  end

  test "should update Pet" do
    visit pet_url(@pet)
    click_on "Edit this pet", match: :first

    fill_in "Age", with: @pet.age
    fill_in "Breed", with: @pet.breed
    fill_in "Date in", with: @pet.date_in
    fill_in "Date out", with: @pet.date_out
    fill_in "Description", with: @pet.description
    fill_in "Disease", with: @pet.disease
    fill_in "Food", with: @pet.food
    fill_in "Keeper", with: @pet.keeper
    fill_in "Medicins", with: @pet.medicins
    fill_in "Owner", with: @pet.owner
    fill_in "Owner", with: @pet.owner_id
    fill_in "Picture", with: @pet.picture
    fill_in "Title", with: @pet.title
    fill_in "Weight", with: @pet.weight
    click_on "Update Pet"

    assert_text "Pet was successfully updated"
    click_on "Back"
  end

  test "should destroy Pet" do
    visit pet_url(@pet)
    click_on "Destroy this pet", match: :first

    assert_text "Pet was successfully destroyed"
  end
end
