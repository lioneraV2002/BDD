package org.example;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import org.junit.Assert;

public class CalculatorStepDefs {

    private Calculator calculator;
    private double result;
    private String errorMessage;

    @Given("I have a calculator")
    public void iHaveACalculator() {
        calculator = new Calculator();
    }


    @When("I calculate {double} modulo {double}")
    public void iCalculateModulo(Double operand1, Double operand2) {
        result = calculator.calculate(operand1, operand2, "%");
    }


    @When("I try to calculate {double} with invalid operator {string} and {double}")
    public void iTryToCalculateWithInvalidOperator(Double operand1, String operator, Double operand2) {
        try {
            result = calculator.calculate(operand1, operand2, operator);
        } catch (IllegalArgumentException e) {
            errorMessage = e.getMessage();
        }
    }

    @Then("the result should be {double}")
    public void theResultShouldBe(Double expectedResult) {
        Assert.assertEquals(expectedResult, result, 0.0001);
    }

    @Then("I should get an error message {string}")
    public void iShouldGetAnErrorMessage(String expectedErrorMessage) {
        Assert.assertEquals(expectedErrorMessage, errorMessage);
    }
}