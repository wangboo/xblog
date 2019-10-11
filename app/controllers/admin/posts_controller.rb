class Admin::PostsController < Admin::BaseController

  after_action :remove_cache, only: %w(publish_down publish_up update)

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

  def new
    post = Category.first.posts.create(title: '未命名', content: '# 开始您的创作吧')
    redirect_to edit_admin_post_path(post)
  end

  def update
    data = params.require(:post).permit(:id, :title, :category_id, :content, :html)
    logger.info "html: #{data[:html]}"
    @post = Post.find(data[:id])
    @post.update!(data)
    redirect_to admin_posts_path
  end

  def remove_cache
    logger.info "expire_fragment :hot_posts_panels"
    expire_fragment :hot_posts_panels
  end

end
