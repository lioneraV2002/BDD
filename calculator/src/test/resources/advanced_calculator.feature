Feature: Advanced Calculator Operations
  As an advanced user
  I want to perform complex calculations
  So that I can handle various mathematical scenarios

  Scenario Outline: Testing decimal precision
    Given I have a calculator
    When I calculate <operand1> <operation> <operand2>
    Then the result should be <expected_result>

    Examples:
      | operand1 | operation     | operand2 | expected_result |
      | 0.1      | plus          | 0.2      | 0.3            |
      | 1.5      | minus         | 0.5      | 1.0            |
      | 2.5      | multiplied by | 4.0      | 10.0           |
      | 7.5      | divided by    | 2.5      | 3.0            |

  Scenario Outline: Testing negative numbers
    Given I have a calculator
    When I calculate <operand1> <operation> <operand2>
    Then the result should be <expected_result>

    Examples:
      | operand1 | operation     | operand2 | expected_result |
      | -5.0     | plus          | 3.0      | -2.0           |
      | -10.0    | minus         | -4.0     | -6.0           |
      | -6.0     | multiplied by | -7.0     | 42.0           |
      | -15.0    | divided by    | -3.0     | 5.0            |

  Scenario Outline: Testing large numbers
    Given I have a calculator
    When I calculate <operand1> <operation> <operand2>
    Then the result should be <expected_result>

    Examples:
      | operand1 | operation     | operand2 | expected_result |
      | 1000000.0| plus          | 2000000.0| 3000000.0      |
      | 5000000.0| minus         | 1000000.0| 4000000.0      |
      | 1000.0   | multiplied by | 1000.0   | 1000000.0      |
      | 10000000.0| divided by   | 1000.0   | 10000.0        |

