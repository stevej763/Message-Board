feature 'User can see posts' do
  scenario 'on the homepage there a posts' do
    visit('/')
    expect(page).to have_selector('#posts')
    expect(page).to have_selector('#post-title', text: "Post 1")
    expect(page).to have_selector('#post-title', text: "Post 2")
    expect(page).to have_selector('#post-title', text: "Post 3")
    expect(page).to have_selector('#post-title', text: "Post 4")
    expect(page).to have_selector('#post-title', text: "Post 5")
  end

  scenario 'posts have comments' do
    visit('/')
    expect(page).to have_selector('#posts')
    expect(page).to have_selector('#post-title', text: "Post 1")
    expect(page).to have_selector('#post-comments')
    expect(page).to have_selector('#post-comment', text: "This is the first comment on post 1")
    expect(page).to have_selector('#post-comment', text: "This is the second comment on post 1")
    expect(page).to have_selector('#post-comment', text: "This is the first comment on post 2")
    expect(page).to have_selector('#post-comment', text: "This is the first comment on post 3")
    expect(page).to have_selector('#post-comment', text: "This is the first comment on post 4")
  end

  scenario 'posts have likes and dislikes' do
    visit('/')
    expect(page).to have_selector('#posts')
    expect(page).to have_selector('#post-title', text: 'Post for feature testing')
    expect(page).to have_selector('#post-likes', text: '34')
    expect(page).to have_selector('#post-dislikes', text: '6')
  end

  scenario 'comments have likes and dislikes' do
    visit('/')
    expect(page).to have_selector('#post-comment', text: "This is a comment for feature testing!")
    expect(page).to have_selector('#comment-likes', text: '23')
    expect(page).to have_selector('#comment-dislikes', text: '67')
  end
end
