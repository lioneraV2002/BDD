Feature: Calculator Operations
  As a user
  I want to perform basic mathematical operations
  So that I can calculate results accurately

  Scenario: Modulo operation with valid inputs
    Given I have a calculator
    When I calculate 10.0 modulo 3.0
    Then the result should be 1.0

  Scenario: Invalid modulo operation
    Given I have a calculator
    When I try to calculate 10.0 with invalid operator "mod" and 0.0
    Then I should get an error message "Invalid operator: mod"