Feature:  karate db test suite
  Interacting with DB

  Background: dbInit
    * def db = Java.type('misc.MyDBUtil')


  Scenario: select stmt test case

    * def rows = db.selectStatement("select * from tools")
    * print rows
    * match rows contains "Selenium"


  Scenario: insert stmt test case

    * def res = db.insertStatement("Insert into tools values(56,'sample2','xyz')")
    * print res
    * match res == 'Success'

  Scenario: update stmt test case

    * def rowsAffected = db.updateStatement("update tools set name='sample3' where id=56")
    * print rowsAffected
    * assert rowsAffected >= 1

  Scenario: delete stmt test case

    * def rowsAffected = db.deleteStatement("delete from tools where id=56")
    * print rowsAffected
    * assert rowsAffected >= 1