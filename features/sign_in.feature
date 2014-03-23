Feature:
  As a facebook user
  I want to sign in
  so I can share stuff

  Scenario: Sign in
    Given I am at the facebook home page
    When I attempt to sign in
    Then I should see a success message
    And end up in my profile page
