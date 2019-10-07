class PostController < ApplicationController

  def show
    @post = Post.find(params[:id])
    render
  end

end
