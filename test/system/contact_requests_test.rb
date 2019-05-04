require "application_system_test_case"

class ContactRequestsTest < ApplicationSystemTestCase
  test "should not save ContactRequest instance without email and content input entirely" do
    contact = ContactRequest.new
    assert_not contact.save, "Saved a ContactRequest instance without input entirely"
  end

  test "should not save ContactRequest instance without proper email credentials" do
    contact = ContactRequest.new(email: 'testtest.com', content: 'This is a test!')
    assert_not contact.save, "Saved a ContactRequest instance without email credentials"
  end

  test "should not save ContactRequest instance with fewer than 10 characters for content attribute" do
    contact = ContactRequest.new(email: 'test@test.com', content: 'Test')
    assert_not contact.save, "Saved a ContactRequest instance with less than 10 characters"
  end

  test "submitting the ContactRequest form should redirect to root" do
    visit "/"
    fill_in "contact_request_email", with: "test@test.com"
    fill_in "contact_request_content", with: "Testing the redirection"
    click_on "Send message"
    assert_equal root_path, page.current_path, "The contact form did not redirect to root after submission"
  end

  test "submitting the ContactRequest form without the @ character should fail" do
    visit "/"
    fill_in "contact_request_email", with: "test.com"
    fill_in "contact_request_content", with: "Testing data permanence"
    click_on "Send message"
    # save_and_open_screenshot
  end

  test "submitting the ContactRequest form without appending a national domain code should fail" do
    visit "/"
    fill_in "contact_request_email", with: "test@test"
    fill_in "contact_request_content", with: "Testing data permanence"
    click_on "Send message"
    # save_and_open_screenshot
  end
end
