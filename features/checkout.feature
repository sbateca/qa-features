Feature: checkout cart
    Scenario: Checkout Process
        Given the user has items in the cart
        When the user proceeds to checkout
        And completes the payment process with valid information
        Then the user should receive an order confirmation
        And the order details should be displayed accurately

    Scenario: Payment Process with Declined Card
        Given the user is on the payment page
        When the user enters payment information with a declined card
        Then a message should be displayed indicating the payment was declined
        And the user should be prompted to try another payment method