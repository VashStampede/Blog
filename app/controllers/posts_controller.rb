class PostsController < ApplicationController
  before_filter :authenticate_user!, :only => :show
  load_and_authorize_resource
  skip_authorize_resource :only => :show
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    
    @post.update_attributes(:user_id=>current_user.id)
    if @post.save
      redirect_to :action => :show, :id => @post.id
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to :action => :show, :id => @post.id
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to :action=> :index
  end

end
