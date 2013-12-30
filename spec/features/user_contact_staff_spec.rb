require 'spec_helper'

feature "contact staff form" do
  #I must specify a valid email address
  #I must specify a subject
  #I must specify a description
  #I must specify a first name
  #I must specify a last name
  scenario "valid input" do
    visit new_contact_form_path

    fill_in "Email", with: "j@aol.com"
    fill_in "Last name", with: "Aol"
    fill_in "First name", with: "J"
    fill_in "Subject", with: "Life"
    fill_in "Description", with: "This is the description part."
    click_on "Create Contact form"

    expect(page).to have_content("Contact form was successfully created.")
  end

  scenario "invalid input" do
    visit new_contact_form_path
    click_on "Create Contact form"
    expect(page).to have_content("prohibited")
  end
end

#As a site visitor
#I want to contact the site's staff
#So that I can tell them how awesome they are


