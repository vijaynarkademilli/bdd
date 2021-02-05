Feature: karate Test Suit 23
  Reading Global Variables from Karate config

  # test git commit and jenins
  Scenario: Karate config test case
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
    * print response