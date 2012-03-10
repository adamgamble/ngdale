Given /^an admin exists with email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  @admin = Admin.create(:email => email, :password => password, :password_confirmation => password)
end

Given /^I am on the admin login page$/ do
  visit("/admins/sign_in")
end

Then /^I should be on the admin home page$/ do
  current_path.should == "/admin"
end

Then /^I should be on the admin login page$/ do
  current_path.should == "/admins/sign_in"
end
