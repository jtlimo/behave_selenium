from behave import *
#from pages.search import Search

@given('we have behave installed')
def step_impl(context):
    pass

@when('we implement tests')
def step_impl(context):
    context.browser.get("http://www.google.com")

@then('behave will test it for us!')
def step_impl(context):
    self.fail('ERROW')
