class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :update, :show, :destroy]
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_url(@blog)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blog_url(@blog)
    else
      render :edit
    end
  end

  def show
  end

  def index
    @blogs = Blog.all
  end

  def destroy
    @blog.destroy
    redirect_to blogs_url
  end
  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
