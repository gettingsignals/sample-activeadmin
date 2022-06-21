require "test_helper"

class ContactMailerTest < ActionMailer::TestCase
  test "create user" do
    email = ContactMailer.contact_mail("test100@example.com", "テストタイトル", "テスト　太郎")

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["from@example.com"], email.from
    assert_equal ["test100@example.com"], email.to
    assert_equal "【テストメール】 テストタイトル", email.subject
    assert_equal read_fixture("contact_mail").join, email.body.to_s
  end
end
