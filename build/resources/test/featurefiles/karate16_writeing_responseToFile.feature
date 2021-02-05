Feature:  karate test suite 16
  Writeing Response to external file

  Scenario: Writeing file
    * def util = Java.type("misc.Util")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response
    #* def res = get response $.data[0].email
    * print res
    * util.writeToFile("result.json",res)

    Scenario: Reading Result File
      * def data = read("classpath:result.json")
      * print data




