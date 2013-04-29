require 'test_helper'

class ContactTest < ActionMailer::TestCase
  test "user_contact" do
    mail = Contact.user_contact
    assert_equal "User contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
