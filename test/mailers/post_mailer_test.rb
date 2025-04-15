require "test_helper"

class PostMailerTest < ActionMailer::TestCase
  test "send_comment" do
    mail = PostMailer.send_comment
    assert_equal "Send comment", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
