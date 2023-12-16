class PostsController < ApplicationController
  def index
    @posts=Post.all
    @date1 = Date.current.strftime('%Y/%m/%d')
    @count =Post.count
  end
  def new
    @post=Post.new
  end

  def create
    @post=Post.new(params.require(:post).permit(:title,:start,:finish,:allday,:note))
    if @post.save
      redirect_to:posts
    else render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
