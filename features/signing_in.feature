Feature: Signing in
  Scenario: Unsuccessful signin
    Given a user visits signin page
  When they submitt invalid signin information
    Then they should see an error page

  Scenario: Successful signin
    Given a user visits the signin page
      And the user has an account
    When the user submits valid signin information
    Then they should see their profile page
      And they should see a signout link