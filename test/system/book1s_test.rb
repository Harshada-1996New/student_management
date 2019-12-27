require "application_system_test_case"

class Book1sTest < ApplicationSystemTestCase
  setup do
    @book1 = book1s(:one)
  end

  test "visiting the index" do
    visit book1s_url
    assert_selector "h1", text: "Book1s"
  end

  test "creating a Book1" do
    visit book1s_url
    click_on "New Book1"

    fill_in "Book no", with: @book1.book_no
    fill_in "Rake no", with: @book1.rake_no
    fill_in "Student", with: @book1.student_id
    click_on "Create Book1"

    assert_text "Book1 was successfully created"
    click_on "Back"
  end

  test "updating a Book1" do
    visit book1s_url
    click_on "Edit", match: :first

    fill_in "Book no", with: @book1.book_no
    fill_in "Rake no", with: @book1.rake_no
    fill_in "Student", with: @book1.student_id
    click_on "Update Book1"

    assert_text "Book1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Book1" do
    visit book1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book1 was successfully destroyed"
  end
end