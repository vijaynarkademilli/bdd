Feature: Karate Test Suit 3
  Validating the XML Content

  Scenario: XML Test case 1
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.tool.name

  Scenario: XML Test case 2
    Given def xml =
    """
      <info>
        <id>101</id>
        <tool>
          <name>Karate</name>
          <version>0.9.6</version>
        </tool>
      </info>
    """
    * print xml
    * print xml.info.id
    * print xml.info.tool.name

  Scenario: XML Test case 3
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml/info/id == "101"
    * match xml.info.tool.name == "Karate"

  Scenario: XML Test case 4
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "Karate"

  Scenario: xml test case6
    Given def xml =
    """
    <info>
  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
  <name>IntelliJ</name>
  <version>2020.2</version>
  </tool>
  </info>
    """
    * match (xml/info/tool[1]/name == "Karate" ) && (xml/info/tool[2]/name == "IntelliJ" )








