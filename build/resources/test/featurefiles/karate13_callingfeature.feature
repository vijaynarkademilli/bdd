Feature: Calling Feature Test Suit
  Calling Feature

  @rest
  Scenario: CallingFeature Testcase 1
    * def result = call read("karate13_calledfeature.feature")
    * print result
    * assert result.response.string._ == "104"
