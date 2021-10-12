feature 'User can add a post' do
  scenario 'user fills in the text and adds a post' do
    visit('/')
    expect(page).to have_selector('#new-post')
    random = rand(0...10000)
    fill_in("new-post-textbox", with: "This is a new post from a feature test #{random}")
    click_on "add-post"
    expect(page).to have_selector('#post-title', text: "This is a new post from a feature test #{random}")
  end
end