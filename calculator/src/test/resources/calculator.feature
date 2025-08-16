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

    Scenario: Addition of two numbers
      Given I have a calculator
      When I calculate 5.0 plus 3.0
      Then the result should be 8.0

    Scenario: Subtraction of two numbers
      Given I have a calculator
      When I calculate 10.0 minus 4.0
      Then the result should be 6.0

    Scenario: Multiplication of two numbers
      Given I have a calculator
      When I calculate 6.0 multiplied by 7.0
      Then the result should be 42.0

    Scenario: Division of two numbers
      Given I have a calculator
      When I calculate 15.0 divided by 3.0
      Then the result should be 5.0

    Scenario: Division by zero
      Given I have a calculator
      When I try to divide 10.0 by 0.0
      Then I should get an error message "Division by zero is not allowed"


  Scenario Outline: Multiple calculations with different operators
    Given I have a calculator
    When I calculate <operand1> <operation> <operand2>
    Then the result should be <expected_result>

    Examples:
      | operand1 | operation | operand2 | expected_result |
      | 2.0      | plus      | 3.0      | 5.0            |
      | 10.0     | minus     | 6.0      | 4.0            |
      | 4.0      | multiplied by | 5.0  | 20.0           |
      | 20.0     | divided by    | 4.0  | 5.0            |
      | 100.0    | plus      | 50.0     | 150.0          |
      | 25.0     | minus     | 15.0     | 10.0           |
      | 3.0      | multiplied by | 8.0  | 24.0           |
      | 36.0     | divided by    | 6.0  | 6.0            |

  Scenario Outline: Invalid operations
    Given I have a calculator
    When I try to calculate <operand1> with invalid operator "<operator>" and <operand2>
    Then I should get an error message "Invalid operator: <operator>"

    Examples:
      | operand1 | operator | operand2 |
      | 5.0      | %        | 2.0      |
      | 10.0     | ^        | 3.0      |
      | 7.0      | &        | 4.0      |

