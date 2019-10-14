class ProxyController < ApplicationController

  def delegate
    redirect_to "http://49.232.151.122/#{request.path}"
  end

end
