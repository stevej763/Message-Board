feature 'Users can access homepage' do
  scenario 'when going to "/"' do
    visit '/'
    expect(page).to have_content "The Message Board"
    expect(page).to have_current_path '/'
  end
end