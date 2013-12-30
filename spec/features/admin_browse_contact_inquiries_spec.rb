require 'spec_helper'

#As an admin
#I want to review contact inquiries
#So that I can respond or take action
#Acceptance Criteria:
#
#I can see a list of all contact inquiries
feature 'admin review contact' do
  scenario 'all inquiries' do
    FactoryGirl.create(:contact_form)
    FactoryGirl.create(:contact_form)
    FactoryGirl.create(:contact_form)
    visit contact_forms_path

    expect(page).to have_content("3 inquiries")
  end

  scenario 'delete inquiries' do
    FactoryGirl.create(:contact_form)
    FactoryGirl.create(:contact_form)
    FactoryGirl.create(:contact_form)

    visit contact_forms_path
    first(:link, "Destroy").click
    expect(page).to have_content("2 inquiries")
  end
end

