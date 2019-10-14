class Admin::ImagesController < Admin::BaseController

  def create
    file = params[:image][:file]
    resp = Image.fdfs_upload file
    puts "resp = #{resp}"
    if resp[:status]
      result = resp[:result]
      path = result[:path].gsub("M00/", "/")
      Image.create(path: path, group: result[:group_name], size: file.size, format: file.content_type)
    else
      flash[:error] = "上传失败：#{resp[:err_msg]}"
    end

    redirect_to admin_images_path
  end

  def destroy
    Image.find(params[:id]).destroy
    redirect_to admin_images_path
  end

end
