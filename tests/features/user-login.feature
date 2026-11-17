Feature: Log in with the accounts of the site build
  As a site owner
  I want the accounts of a new Webship site to log in
  So that the site is ready to use after the installation

  The site build creates the accounts (tests/README.md); the suite only logs in.

  Scenario: The Webmaster logs in and reaches the administration
    Given I am a logged in user with the "Webmaster" user
     Then I should be logged in
      And I should be allowed access to "/admin/content"
      And I should be allowed access to "/admin/people"

  Scenario: A content editor logs in and reaches the content, not the people
    Given I am a logged in user with the "Content editor" user
     Then I should be logged in
      And I should be allowed access to "/admin/content"
      And I should be denied access to "/admin/people"

  Scenario: An authenticated user logs in and stays out of the administration
    Given I am a logged in user with the "Authenticated user" user
     Then I should be logged in
      And I should be denied access to "/admin/content"
