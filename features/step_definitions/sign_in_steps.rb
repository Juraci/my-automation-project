Given /^I am at the facebook home page$/ do
  page.visit "/"
  #page.should have_content("It's free and always will be.")
end

When /^I attempt to sign in$/ do
   page.fill_in("firstname", :with => "Juraci")
   page.fill_in("lastname", :with => "Vieira Bilato Bilatu")
   page.fill_in("reg_email__", :with => "meg@megmail.com")
   page.fill_in("reg_email_confirmation__", :with => "meg@megmail.com")
   page.fill_in("reg_passwd__", :with => "*BF3meg2008Nitas*")
   page.select "Oct", :from => "month"
   page.select "27", :from => "day"
   page.select "2008", :from => "year"
   page.choose "Female"

   page.click_button "Sign Up"
end

Then /^I should see an error message$/ do
   page.should have_css "#standard_error"
end


