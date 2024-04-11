from behave import given, when, then

@given('a user is on the registration page')
def step_impl(context):
    context.browser.visit(context.get_url('register'))

@when('he submits valid registration information')
def step_impl(context):
    context.browser.fill('username', 'user')
    context.browser.fill('email', '')
    context.browser.fill('password', 'pass')
    context.browser.find_by_css('.btn-success').click()

@then('he should be redirected to the user dashboard')
def step_impl(context):
    assert context.browser.url == context.get_url('dashboard')
