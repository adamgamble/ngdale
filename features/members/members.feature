Feature: As a member, I would like to be able to login

  Scenario: I should be able to navigate to the member login page and sign in
    Given a member exists with email "adamgamble@gmail.com" and password "password"
    And I am on the home page
    And I follow "Members"
    And I fill in "Email" with "adamgamble@gmail.com"
    And I fill in "Password" with "password"
    And I click "Sign in"
    Then I should be on the members home page
    And I should see "Signed in successfully."

  Scenario: When I put in incorrect login info, it shouldn't log me in
    Given a member exists with email "adamgamble@gmail.com" and password "password"
    And I am on the home page
    And I follow "Members"
    And I fill in "Email" with "adamgamble@gmail.com1"
    And I fill in "Password" with "password"
    And I click "Sign in"
    Then I should be on the members sign in page
    And I should see "Invalid email or password."
