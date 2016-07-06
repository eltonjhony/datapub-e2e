Feature: Send email on Datapub app Website

@javascript
Scenario: Search for the website        
	Given I am on the Datapubapp homepage
	Then I click the contact link
	When I fill "name" with "Capybara User"
	When I fill "email" with "eljholiveira@gmail.com"
	When I fill "message" with "Executing Integration tests with Ruby, Cucumber and Capybara"
	When I click enviar button
	Then I expect see "Sua mensagem foi enviada com sucesso. Obrigado por entrar em contato, a equipe DataPub agradece. "
