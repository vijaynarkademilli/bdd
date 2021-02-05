Feature: Karate test suit 14
  Calling JAVA static and non-static method

  Scenario: Non static method function TC

    * def env1 =
      """
        function(){
          var temp = Java.type('misc.Util')
          var utils = new temp();
          return utils.method2();
        }
      """
    * print env1()

  Scenario: static method function TC

    * def env2 =
      """
        function(){
          var temp = Java.type('misc.Util')
          return temp.method1();
        }
      """
    * print env2()
