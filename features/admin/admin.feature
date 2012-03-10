Feature: As an admin, I would like to be able to login

  Scenario: I should be able to navigate to the admin login page and sign in
    Given an admin exists with email "adamgamble@gmail.com" and password "password"
    And I am on the admin login page
    And I fill in "Email" with "adamgamble@gmail.com"
    And I fill in "Password" with "password"
    And I click "Sign in"
    Then I should be on the admin home page
    And I should see "Signed in successfully."

  Scenario: When I put in incorrect login info, it shouldn't log me in
    Given an admin exists with email "adamgamble@gmail.com" and password "password"
    And I am on the admin login page
    And I fill in "Email" with "adamgamble@gmail.com1"
    And I fill in "Password" with "password"
    And I click "Sign in"
    Then I should be on the admin login page
    And I should see "Invalid email or password."
