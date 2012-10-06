@ImageReplacer =
   replaceAll: ->
     images = $("img")
     this.replace(image) for image in images

   replace: (selector) ->
     image = $(selector)
     large_image = image.attr "data-large-image"
     image.attr "src", large_image
