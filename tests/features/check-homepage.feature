Feature: Check the home page
  As an anonymous user
  I want to be able to visit the home page
  So that I know that the site is working

  Scenario: The home page of the site is served
    Given I am on the homepage
    Then I should see "Webship"
     And I should not see "error has occurred"
