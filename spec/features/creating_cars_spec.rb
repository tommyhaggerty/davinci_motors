require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')
  end

  scenario 'can create a second car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')

    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Prius'
    fill_in 'Year', with: '2013'
    fill_in 'Price', with: '17500'

    click_button 'Create Car'

    expect(page).to have_content('2013 Toyota Prius created')
  end

  scenario 'User can edit a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Prius'
    fill_in 'Year', with: '2013'
    fill_in 'Price', with: '17500'

    click_button 'Create Car'

    expect(page).to have_content('2013 Toyota Prius created')

    visit '/'

    click_link 'Edit'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Prius'
    fill_in 'Year', with: '2013'
    fill_in 'Price', with: '17800'

    click_button 'Update Car'

    expect(page).to have_content ('2013 Toyota Prius updated')
  end
end
