Feature: Automatize Api methods

  Scenario: Test method post gists comments
    Given request to url api post "https://api.github.com/gists/33/comments"
    Then response acepted and created
    And response within valid body JSON
