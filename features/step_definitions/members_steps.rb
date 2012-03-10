Given /^a member exists with email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  @member = Member.create(:email => email, :password => password, :password_confirmation => password)
end

Given /^I am on the home page$/ do
  visit("/")
end

Given /^I follow "([^"]*)"$/ do |link|
  click_link(link)
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |field_name, value|
  fill_in(field_name, :with => value)
end

Given /^I click "([^"]*)"$/ do |button_name|
  click_button(button_name)
end

Then /^I should be on the members home page$/ do
  current_path.should == "/members"
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should be on the members sign in page$/ do
  current_path.should == "/members/sign_in"
end
