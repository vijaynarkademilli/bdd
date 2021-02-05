Feature: Karate Test Suit 11
  End to End API Testing (API chaining)

  @rest
  Scenario: rest api Test case 1
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Vijay","salary":"123","age":"23"}
    When method post
    Then status 200
    * print response
    * def id = response.data.id
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" +id
    When method get
    Then status 200
    * print response
    * assert response.data.id == id

    Given url "http://dummy.restapiexample.com/api/v1/update/" +id
    And request {"name":"Vijay","salary":"123","age":"32"}
    When method put
    Then status 200
    * print response

    Given url "	http://dummy.restapiexample.com/api/v1/delete/" +id
    When method delete
    Then status 200
    * print response
    * assert response.message == "successfully! deleted records"


