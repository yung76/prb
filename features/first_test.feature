Feature: Automate functional test Falabella

   Scenario: Buy a three product but dont complete de purchase
    Given browser navigate to web site "https://www.falabella.com/falabella-cl/"
    Then go to section videogames
    Then apply filter by brand
    And increase quantity by three
