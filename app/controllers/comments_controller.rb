class CommentsController < ApplicationController
  before_filter :find_comments
  
  caches_page :index
  
  # GET /comments
  def index
    @comment = Comment.new
  end

  # POST /comments
  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    
    expire_page(root_path)
    redirect_to(root_url)
  end
  
  private
  
  def find_comments
    @comments = Comment.all
  end
end
