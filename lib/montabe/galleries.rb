module Montabe
  module Galleries
  
    # Retrieve a list of all galleries

    def galleries
      response = connection.get("galleries")
      return_error_or_body(response, response.body.galleries)
    end

    # Retrieve a gallery
    #
    # param [String] gallery_name The name of the gallery

    def gallery(gallery_name)
      response = connection.get("galleries/#{gallery_name}")
      return_error_or_body(response, response.body.gallery)
    end
  end
end
