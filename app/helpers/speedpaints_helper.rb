module SpeedpaintsHelper
  
  # this method will embed the code from the partial
  def youtube_video(url)
    if defined?(url) && (url !='') then
      url_edited = url.sub!("watch?v=", "v/");
      render :partial => 'video', :locals => { :url => url_edited }
    end
  end 
  
end
