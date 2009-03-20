class CommentsController < ApplicationController
  caches_page :index
  
  # GET /comments
  def index
    @comments = Comment.all
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # POST /comments
  def create
    @comment = Comment.new(params[:comment])

    if @comment.save
      expire_page(root_path)
      redirect_to(root_url)
    else
      render :action => "new"
    end
  end
end
