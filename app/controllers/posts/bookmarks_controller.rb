class Posts::BookmarksController < ApplicationController
  include ActionView::RecordIdentifier

  def update
    post = current_user.posts.find(params[:post_id])

    if post.bookmarked?(current_user)
      post.unbookmark(current_user)
    else
      post.bookmark(current_user)
    end

    respond_to do |format|
      format.html
      format.turbo_stream {
        render turbo_stream: turbo_stream.update(dom_id(post, :bookmark), partial: "bookmarks/bookmark",
      locals: { post: post })
      }
    end
  end
end
