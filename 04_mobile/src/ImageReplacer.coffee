@ImageReplacer =
   notMobile: ->
    $(window).width() > 480 

   replaceAll: ->
     images = $("img")
     this.replace(image) for image in images

   replace: (selector) ->
     if this.notMobile()
       image = $(selector)
       large_image = image.attr "data-large-image"
       image.attr "src", large_image
