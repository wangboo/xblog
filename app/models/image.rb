class Image

  include Mongoid::Document
  include Mongoid::Timestamps
  include FastdfsClient

  # 关联删除fdfs中的图片
  after_destroy do |image|
    Image.fdfs_delete(image)
  end 

  # fastdfs 路径
  field :path
  # 分组
  field :group
  # 大小
  field :size, type: Integer
  # 格式
  field :format

  def uri
    "/fdfs#{path}"
  end

end