import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When("I try to sign up or create a new account", () => {
	cy.visit("https://arstechnica.com/civis/ucp.php?mode=register");
});

When("I try to register a account with a invalid email format", () => {
	const user = {
		username: `user-${Date.now()}`,
		email: "invalid@email",
		password: "valid-pass.4321"
	};
	cy.get("#username").type(user.username);
	cy.get("#new_password").type(user.password);
	cy.get("#password_confirm").type(user.password);
	cy.get("#email").type(user.email);
	cy.get("#email_confirm").type(user.email);

	cy.get("input[type='submit']").click();


});

Then("It returns a error message {string} on a visible place", (message: string) => {
	cy.get(".error h2").contains("Form Errors").should("be.visible");
	cy.get(".error li").contains(message).should("be.visible");
});
