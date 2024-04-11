Feature: Product search and add to cart
    Scenario: Product Search and Add to Cart
        Given the user is logged in and on the homepage
        When the user searches for a specific product
        And selects a product from the search results
        And adds the product to the cart
        Then the product should be added to the cart successfully
        And the cart should display the correct product details

    Scenario: Adding More Products Than Allowed to Cart
        Given the user is logged in and on the product page
        When the user attempts to add more products to the cart than available in stock
        Then a message should be displayed indicating the maximum quantity available
