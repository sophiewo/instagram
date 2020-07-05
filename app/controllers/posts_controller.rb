# frozen_string_literal: true

class PostsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end 
  end

  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end

end
