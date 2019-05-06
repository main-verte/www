require 'test_helper'

class ContactRequestTest < ActiveSupport::TestCase
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
end
