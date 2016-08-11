class CommentsController < ApplicationController

  before_filter :authenticate_user!, :only => [:create]

  def create
    @article = Article.find(params[:article_id])
    new_article = @article.comments.new(comment_params)
    new_article.author = current_user.username
    new_article.save
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end


