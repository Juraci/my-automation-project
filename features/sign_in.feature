Feature:
  As a facebook user
  I want to sign in
  so I can share stuff

  Scenario: Invalid email
    Given I am at the facebook home page
    When I attempt to sign in
    Then I should see an error message
