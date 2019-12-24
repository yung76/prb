Feature: Automatize Api methods

  Scenario: Test method get gists comments
    Given request to url api "https://api.github.com/gists/45"
    Then response state OK
    And response time below 500ms
