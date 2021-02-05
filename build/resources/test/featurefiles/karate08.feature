Feature: Karate Test Suit 8
  Validating With Regular Expressions

  Scenario: Regular expression validation Test case

    * def a = "10"
    * def b = "Karate"
    * def c = "Karate Framework Training"

    * match  a == "#regex [0-9]+"
    * match  a == "#regex \\d+"
    * match  b == "#regex \\w+"
    * match  b == "#regex [A-Z][a-z]+"
    * match  c == "#regex [A-Za-z\\s]+"
    * match  c == "#regex (\\w+\\s?)+"



