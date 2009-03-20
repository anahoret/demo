class CommentsController < ApplicationController
  before_filter :find_comments
  
  # GET /comments
  def index
    @comment = Comment.new
  end

  # POST /comments
  def create
    @comment = Comment.new(params[:comment])

    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
      redirect_to root_url
    else
      render :action => "index"
    end
  end
  
  private
  
  def find_comments
    @comments = Comment.all
  end
end
