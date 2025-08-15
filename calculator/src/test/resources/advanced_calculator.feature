Feature: Advanced Calculator Operations
  As an advanced user
  I want to perform complex calculations
  So that I can handle various mathematical scenarios

  Scenario Outline: Testing decimal precision
    Given I have a calculator
    When I calculate <operand1> <operation> <operand2>
    Then the result should be <expected_result>

  Scenario Outline: Testing negative numbers
    Given I have a calculator
    When I calculate <operand1> <operation> <operand2>
    Then the result should be <expected_result>

  Scenario Outline: Testing large numbers
    Given I have a calculator
    When I calculate <operand1> <operation> <operand2>
    Then the result should be <expected_result>

