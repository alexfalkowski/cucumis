Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
