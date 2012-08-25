require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :body => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path(@message), :method => "post" do
      assert_select "input#message_body", :name => "message[body]"
      assert_select "input#message_user_id", :name => "message[user_id]"
    end
  end
end
