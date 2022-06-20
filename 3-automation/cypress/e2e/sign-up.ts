import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When("I try to sign up or create a new account", () => {
  cy.visit("https://arstechnica.com/civis/ucp.php?mode=register");
});

When("I try to register a account with a invalid email format", ()=>{
    const user = {

    }
    cy.get("#username")
  });

Then("I should see a search bar", () => {
  cy.get("input").should(
    "have.attr",
    "placeholder",
    "Search the web without being tracked"
  );

  assert.deepEqual({}, {});
});
