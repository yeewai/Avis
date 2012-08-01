module ItemsHelper
  def thumbnail(media)
    if (media.media_content_type =~ /image/) != nil
      media.media.url
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
