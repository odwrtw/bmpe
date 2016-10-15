module ExperimentsHelper

  # TODO: Update this method to take a random validated picture from a random
  # camera
  def getImageUrlFromExperiment(experiment)
    default_image = 'assets/bm1.jpg'
    unless experiment.cameras.count >= 1
      return default_image
    end
    unless experiment.cameras.first.pics.count >= 1
      return default_image
    end

    return experiment.cameras.first.pics.first.filename.url
  end
end
