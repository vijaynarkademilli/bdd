Feature: Karate Test Suit 7
  Validating data types of varaible

  Scenario: Data Type validation Test case

    * def a = 10
    * def b = "Karate"
    * def c = true

    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"


