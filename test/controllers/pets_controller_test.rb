require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get pets_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_url
    assert_response :success
  end

  test "should create pet" do
    assert_difference("Pet.count") do
      post pets_url, params: { pet: { age: @pet.age, breed: @pet.breed, date_in: @pet.date_in, date_out: @pet.date_out, description: @pet.description, disease: @pet.disease, food: @pet.food, keeper: @pet.keeper, medicins: @pet.medicins, owner: @pet.owner, owner_id: @pet.owner_id, picture: @pet.picture, title: @pet.title, weight: @pet.weight } }
    end

    assert_redirected_to pet_url(Pet.last)
  end

  test "should show pet" do
    get pet_url(@pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_url(@pet)
    assert_response :success
  end

  test "should update pet" do
    patch pet_url(@pet), params: { pet: { age: @pet.age, breed: @pet.breed, date_in: @pet.date_in, date_out: @pet.date_out, description: @pet.description, disease: @pet.disease, food: @pet.food, keeper: @pet.keeper, medicins: @pet.medicins, owner: @pet.owner, owner_id: @pet.owner_id, picture: @pet.picture, title: @pet.title, weight: @pet.weight } }
    assert_redirected_to pet_url(@pet)
  end

  test "should destroy pet" do
    assert_difference("Pet.count", -1) do
      delete pet_url(@pet)
    end

    assert_redirected_to pets_url
  end
end
