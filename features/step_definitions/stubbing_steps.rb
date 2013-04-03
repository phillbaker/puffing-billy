Before('@billy') do
  Capybara.current_driver = :poltergeist_billy
  Capybara.javascript_driver = :poltergeist_billy
end

Given /^a stub for google$/ do
  puts Capybara.current_driver
  puts Capybara.javascript_driver
  proxy.stub('http://www.google.com/').and_return(:text => "I'm not Google!")
  visit 'http://www.google.com/'
  page.should have_content("I'm not Google!")
end