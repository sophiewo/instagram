# frozen_string_literal: true

class PostsController < ApplicationController

  def index
  end

  def new
    @post_this = Post.new
  end

  def create
    @post_this = Post.new(params.require(:post).permit(:title))
    if
    @post_this.save
    redirect_to @post_this
    else
      render new
    end 
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end

end
