const { Given, When, Then } = require('@cucumber/cucumber');
const { disable } = require('mockery');

const LoginPage = require('../pageobjects/login.page');
const SecurePage = require('../pageobjects/secure.page');


Given(/^I am on the login page$/, () => {
    LoginPage.open()
});

When(/^I login with (.+) and (.+)$/, (email, password) => {
    LoginPage.login(email, password)
});
When(/^I enter not valid (.*) or (.*)$/, (email, password) => {

    LoginPage.notValid_login(email, password)
});

Then(/^I should see the main page with My profile$/, () => {
    expect(browser).toHaveTitle('My profile | ThinkMobiles')
});

Then(/^User see (.+) error$/, (message) => {
const erMesage=$(`.input-error*=${message}`)
    expect(erMesage)
    // .toHaveText(message)
    .toHaveTextContaining(message)

});
