feature 'User can see posts' do
  scenario 'on the homepage' do
    visit('/')
    expect(page).to have_selector('#posts')
  end
end