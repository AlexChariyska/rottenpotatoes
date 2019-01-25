Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  Movie.find_by_title(arg1).director == arg2
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  first_position = page.body.index(e1)
  second_position = page.body.index(e2)
  first_position.should < second_position
end