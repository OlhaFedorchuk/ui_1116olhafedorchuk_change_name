@predefined
Feature: Smoke steps

#  @predefined1
#  @regression
#  Scenario: Predefined steps for Google
#    Given I open url "https://google.com"
#    Then I should see page title as "Google"
#    Then I type "Cucumber" into element with xpath "//input[@name='q']"
#    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
#    # Then I wait for 2 sec
#    Then I wait for element with xpath "//*[@id='res']" to be present
#    Then I should see page title contains "- Google Search"
#    Then element with xpath "//*[@id='res']" should contain text "Cucumber"


  @test-scenario
  Scenario: Test scenario for xpath validations
    Given I open url "http://ask-stage.portnov.com"
    Then I type "artem.oganesyan@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec

  @registration
  Scenario: registration
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//*[text()='Register Now']/.."
    Then I type "mama" into element with xpath "//*[@formcontrolname='firstName']"
    Then I type "papa" into element with xpath "//*[@formcontrolname='lastName']"
    Then I type "lolo.@gmaill.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "aaaa" into element with xpath "//*[@formcontrolname='group']"
    Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
    Then I type "12345Abc" into element with xpath "//*[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
#      Given
#      And
    And I confirm user account with email "lolo.@gmaill.com"

  @change_user_name_poz
  Scenario Outline: change_user_name_poz
    Given I open url "http://ask-stage.portnov.com"
    Then I type "fedorchuk.o.1991@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "111111" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"

    Then I wait for element with xpath "//h5[contains(text(),'s Management')]" to be present
    Then I wait for 4 sec
    Then I click on element with xpath "//h5[contains(text(),'s Management')]"

    Then I wait for element with xpath "//*[contains(text(),'<Name>')]" to be present
    Then I wait for 4 sec
    Then I click on element with xpath "//*[contains(text(),'<Name>')]"

    Then I wait for element with xpath "//span/mat-icon[text()='settings']/.." to be present
    Then I wait for 9 sec
    Then I click on element with xpath "//span/mat-icon[text()='settings']/.."

    Then I wait for element with xpath "//button/mat-icon[text()='edit']/.." to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//button/mat-icon[text()='edit']/.."
    Then I wait for element with xpath "//*[@formcontrolname='name']" to be present
    Then I clear element with xpath "//*[@formcontrolname='name']"
    Then I type "<NewName>" into element with xpath "//*[@formcontrolname='name']"
    Then I click on element with xpath "//*[text()='Change']/.."
    Then I wait for 5 sec

    Examples:
    |Name           |NewName        |
    |OlhaFedorchukSt|olxolx         |
    |olxolx         |OlhaFedorchukSt|


   






