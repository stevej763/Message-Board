feature 'User can see posts' do
  scenario 'on the homepage there a posts' do
    create_new_post
    expect(page).to have_selector('#posts')
    expect(page).to have_selector('#post-title', text: @title)
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
    create_new_post
    expect(page).to have_selector('#posts')
    expect(page).to have_selector('#post-title', text: @test)
    expect(page).to have_selector('#post-likes', text: '0')
    expect(page).to have_selector('#post-dislikes', text: '0')
  end

  scenario 'with comments have likes and dislikes' do
    create_new_post
    add_comment_to_first_post_on_page
    expect(page).to have_selector('#post-comment', text: @comment)
    expect(page).to have_selector('#comment-likes', text: '0')
    expect(page).to have_selector('#comment-dislikes', text: '0')
  end
end
