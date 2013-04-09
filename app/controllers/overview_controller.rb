class OverviewController < ResqueWebController
  def show
    render :layout => request.xhr? ? false : 'resque_web', :locals => { :polling => request.xhr? }
  end
end
