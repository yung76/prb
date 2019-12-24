Feature: Automatize Api methods

   Scenario: Test method get gists
    Given request to url api "https://api.github.com/gists/33"
    Then response code will be 200
    And response within valid body JSON
