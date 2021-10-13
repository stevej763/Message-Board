feature 'User can add comments to a post' do
  scenario 'user fills in the text and adds a comment' do
    create_new_post
    expect(page).to have_selector('#post-title', text: "New post: #{@random}")
    expect(page).to have_selector('#post-content', text: "This is a new post from a feature test #{@random}")
    add_comment_to_first_post_on_page
    expect(page).to have_selector('#post-comment', text: @comment)
  end

  scenario 'user adds lots of comments to one post' do
    create_new_post
    expect(page).to have_selector('#post-title', text: "New post: #{@random}")
    expect(page).to have_selector('#post-content', text: "This is a new post from a feature test #{@random}")
    add_comment_to_first_post_on_page
    expect(page).to have_selector('#post-comment', text: @comment)
    add_comment_to_first_post_on_page
    expect(page).to have_selector('#post-comment', text: @comment)
    add_comment_to_first_post_on_page
    expect(page).to have_selector('#post-comment', text: @comment)
    add_comment_to_first_post_on_page
    expect(page).to have_selector('#post-comment', text: @comment)
    add_comment_to_first_post_on_page
    expect(page).to have_selector('#post-comment', text: @comment)
    add_comment_to_first_post_on_page
    expect(page).to have_selector('#post-comment', text: @comment)
  end
end