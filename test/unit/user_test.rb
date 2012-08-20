require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "create a new user" do
    user = User.new(email:                  "test@test.com",
                    password:               "Password1",
                    password_confirmation:  "Password1",
                    first_name:             "test",
                    last_name:              "user"
                    )
    assert user.save "saved the user"
  end
end
