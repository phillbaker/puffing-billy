Before('@billy') do
  Capybara.javascript_driver = :poltergeist_billy
end

Given /^a stub for google$/ do
  proxy.stub('http://www.google.com/').and_return(:text => "I'm not Google!")
  visit 'http://www.google.com/'
  page.should have_content("I'm not Google!")
end