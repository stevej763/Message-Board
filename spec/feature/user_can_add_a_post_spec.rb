feature 'User can add a post' do
  scenario 'user fills in the text and adds a post' do
    create_new_post
    expect(page).to have_selector('#post-title', text: "New post: #{@random}")
    expect(page).to have_selector('#post-content', text: "This is a new post from a feature test #{@random}")
  end
end