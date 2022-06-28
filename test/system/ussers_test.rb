require "application_system_test_case"

class UssersTest < ApplicationSystemTestCase
  setup do
    @usser = ussers(:one)
  end

  test "visiting the index" do
    visit ussers_url
    assert_selector "h1", text: "Ussers"
  end

  test "creating a Usser" do
    visit ussers_url
    click_on "New Usser"

    fill_in "Bio", with: @usser.bio
    fill_in "Birthday", with: @usser.birthday
    fill_in "Email", with: @usser.email
    fill_in "Nombre", with: @usser.nombre
    fill_in "Password", with: @usser.password
    check "Programa" if @usser.programa
    fill_in "Work time", with: @usser.work_time
    click_on "Create Usser"

    assert_text "Usser was successfully created"
    click_on "Back"
  end

  test "updating a Usser" do
    visit ussers_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @usser.bio
    fill_in "Birthday", with: @usser.birthday
    fill_in "Email", with: @usser.email
    fill_in "Nombre", with: @usser.nombre
    fill_in "Password", with: @usser.password
    check "Programa" if @usser.programa
    fill_in "Work time", with: @usser.work_time
    click_on "Update Usser"

    assert_text "Usser was successfully updated"
    click_on "Back"
  end

  test "destroying a Usser" do
    visit ussers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usser was successfully destroyed"
  end
end
