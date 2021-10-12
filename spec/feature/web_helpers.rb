def create_new_post
  visit('/')
  expect(page).to have_selector('#new-post')
  @random = rand(0...10000)
  @content = "This is a new post from a feature test #{@random}"
  @title = "New post: #{@random}"
  fill_in("new-post-textbox", with:  @content)
  fill_in("new-post-title-textbox", with: @title)
  click_on "add-post"
end

def add_comment_to_first_post_on_page
  @comment = "This is a new comment from a feature test #{@random}"
  fill_in('new-comment-textbox', match: :first, with:  @comment)
  click_on(class: 'new-comment-button', match: :first)
end