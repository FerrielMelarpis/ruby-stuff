require 'rails_helper'

RSpec.feature "When submitting a profile with an address", type: :feature do
  scenario 'they see the addresses on the submitted profile' do
    profile = attributes_for(:profile) 
    addresses = [attributes_for(:address), attributes_for(:address)]
    
    visit new_profile_path
    fill_in "profile_name", with: profile[:name]
    fill_in "profile_age", with: profile[:age]
    fill_in "profile_bio", with: profile[:bio]
    addresses.each_with_index do |address, i|
      address.each do |k, v|
        fill_in "profile_addresses_attributes_#{i}_#{k}", with: v
      end
    end
    
    click_on 'Create Profile'

    expect(page).to have_content profile[:name]
    expect(page).to have_content addresses.first[:street]
    expect(page).to have_content addresses.last[:street]
  end
end