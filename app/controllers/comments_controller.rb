class CommentsController < ApplicationController
  def create
    @the_comment = Comment.new
    @the_comment.venue_id = params.fetch("query_venue_id")
    @the_comment.author_id = params.fetch("query_author_id")
    @the_comment.body = params.fetch("query_body")
    @the_comment.save
    
    redirect_to("/venues/#{@the_comment.venue_id}")
  end
end
