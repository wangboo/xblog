class Admin::PostsController < Admin::BaseController
  def index

  end

  def publish_down
    @post = Post.find(params[:post_id])
    @post.publish = false
    @post.save!
    redirect_to admin_posts_path
  end

  def publish_up
    @post = Post.find(params[:post_id])
    @post.publish = true
    @post.save!
    redirect_to admin_posts_path
  end

  def destroy
    redirect_to admin_posts_path
  end

  def edit
    logger.info "params = #{params}"
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def update
    data = params.require(:post).permit(:id, :title, :category_id, :content, :html)
    logger.info "html: #{data[:html]}"
    Post.find(data[:id]).update!(data)
    redirect_to admin_posts_path
  end

end
