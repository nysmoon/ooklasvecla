module SpeedpaintsHelper
  
  # this method will embed the code from the partial
  def youtube_video_index(url)
    if defined?(url) && (url !='') then
      url_edited = url.sub!("watch?v=", "embed/");
      render :partial => 'video_index', :locals => { :url => url_edited }
    end
  end 

  def youtube_video(url)
    if defined?(url) && (url !='') then
      url_edited = url.sub!("watch?v=", "v/");
      render :partial => 'video', :locals => { :url => url_edited }
    end
  end 
  
end
