Feature: Karate Test Suit 1
  this is my first karate

  Scenario: Karate Test case 1
    My First Test Case
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "c= ",c
    And karate.log("End of Test")

  Scenario: Karate Test case 2
    My Second Test Case
    Given def a = 10
    * def b = 20
    When def c = a + b
    Then assert c == 30
    * print "c= ",c
    * karate.log("End of Test")

  Scenario: Karate Test case 3
    My Third Test case
    * def a = 10
    * def b = 20
    * def c = a + b
    * assert c == 30
    * print "c= ",c
    * karate.log("End of Test")

