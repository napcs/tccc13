describe "The ImageReplacer", ->
  sandbox = $('<div id="sandbox"></div>')

  beforeEach ->
    sandbox.appendTo "body"
    
  afterEach ->
    sandbox.empty()

  describe "when on a large screen", ->

    beforeEach ->
      spyOn(ImageReplacer, "notMobile").andReturn(true)

    it "replaces the given image with the large version", ->
      sandbox.append "<img id='test' src='img1.png' data-large-image='img1-large.png'>"
      ImageReplacer.replace("#test")
      expect($("#test").attr("src")).toEqual("img1-large.png")

    it "replaces all images with the large version", ->
      sandbox.append "<img id='test' src='img1.png' data-large-image='img1-large.png'>"
      sandbox.append "<img id='test2' src='img2.png' data-large-image='img2-large.png'>"
      ImageReplacer.replaceAll()
      expect($("#test").attr("src")).toEqual("img1-large.png")
      expect($("#test2").attr("src")).toEqual("img2-large.png")
  
  describe "When on a small screen", ->
    beforeEach ->
      spyOn(ImageReplacer, "notMobile").andReturn(false)


    it "does not replace the image", ->
      sandbox.append "<img id='test' src='img1.png' data-large-image='img1-large.png'>"
      ImageReplacer.replace("#test")
      expect($("#test").attr("src")).toEqual("img1.png")

