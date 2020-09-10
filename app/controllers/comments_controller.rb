class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create 
  
  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)

    redirect_to article_path(@article)
  end

  private

  def comment_params
    pars = params.require(:comment).permit(:body)
    pars[:author] = current_user.username

    return pars
  end
end
