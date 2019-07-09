
# feature 'testing infrstructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'name entry' do
  scenario 'allow players to enter and see their names' do
    visit('/')
    fill_in :player_1_name, with: 'Name'
    fill_in :player_2_name, with: 'Name'
    click_button 'Submit'
    expect(page).to have_content 'Name vs. Name'
    expect(page).to have_content 'Name: 60HP'
  end
end
