module CamerasHelper

  # TODO: Update this method to take a random validated picture
  def getImageUrlFromCamera(camera)
    default_image = 'assets/bm1.jpg'
    unless camera.pics.count >= 1
      return default_image
    end

    return camera.pics.first.filename.url
  end
end
