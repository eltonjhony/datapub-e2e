Given(/^I am on the Datapubapp homepage$/) do
   visit 'http://www.datapubapp.com.br/'
end

Then(/^I click the contact link$/) do
   click_link('Contato')
end

When(/^I fill "([^\"]*)" with "([^\"]*)"$/) do |field, value|
   fill_in(field.gsub(' ','_'), :with => value)
end

When(/^I click enviar button$/) do
   click_button('Enviar')
end

Then(/^I expect see "(.*?)"$/) do |successMessage|
   wait_until { page.evaluate_script('$.active') == 0 } if Capybara.current_driver == :selenium
   page.should have_content(successMessage)
end


