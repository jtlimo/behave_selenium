from selenium import webdriver

def before_all(context):
    context.browser = webdriver.Remote('http://selenium_server:4444/wd/hub', webdriver.DesiredCapabilities.CHROME.copy())

def after_all(context):
    context.browser.quit()
