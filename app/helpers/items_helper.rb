module ItemsHelper
  def thumbnail(media)
    if (media && media.media_content_type =~ /image/) != nil
      media.media.url
    elsif (media && media.media_content_type =~ /webpage/) != nil
      "http://img.bitpixels.com/getthumbnail?code=54400&url=#{media.media_file_name}"
    elsif @isIdeaPot
      "idea.png"
    else
      "missing.png"
    end
  end
  
  def status_image(status)
    case status
      when Item::NOT_READY
        "status-red.png"
      when Item::EDITING
        "status-amber.png"
      when Item::READY
        "status-green.png"
      when Item::IMPLEMENTED
        "status-teal.png"
    end
  end
end
