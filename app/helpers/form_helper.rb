module FormHelper
  def setup_post(post)
    2.times{post.comments.build}
    post
  end
end
