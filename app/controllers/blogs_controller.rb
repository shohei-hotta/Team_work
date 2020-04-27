class BlogsController < ApplicationController
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

  def show
  end

  def index
    @blogs = Blog.all
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
