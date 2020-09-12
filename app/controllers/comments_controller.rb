# frozen_string_literal: true

# Description/Explanation of Comment class
class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create
  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)

    redirect_to article_path(@article)
  end

  private

  def comment_params
    permitted = params.require(:comment).permit(:body)
    permitted[:author] = current_user.username
    permitted
  end
end
