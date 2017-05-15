Feature: As a customer I should be able to search for products
  the MOO website

  Background:
    Given I am on the MOO website

  Scenario: I should be able to search for a valid product
    When I search for Business Cards
    Then I will see a view of Business Cards

  Scenario: I should not be able to search for an invalid product
    When I search for jnddndknd
    Then I will not see any results:
    """
    Sorry we couldn’t find anything.
    Please check the spelling or alternatively chat
    to our friendly customer services
    team using the chat below.
    """