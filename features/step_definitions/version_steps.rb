When(/^my aplication has loaded$/) do
  # Do nothing
end

Then(/^the version should be "([^"]*)"$/) do |version|
  expect(Cucumis::VERSION).to eq(version)
end
