describe "The ImageReplacer", ->

  it "replaces the given image with the large version", ->
    $("body").append "<img id='test' src='img1.png' data-large-image='img1-large.png'>"
    ImageReplacer.replace("#test")
    expect($("#test").attr("src")).toEqual("img1-large.png")

  it "replaces all images with the large version", ->
    $("body").append "<img id='test' src='img1.png' data-large-image='img1-large.png'>"
    $("body").append "<img id='test2' src='img2.png' data-large-image='img2-large.png'>"
    ImageReplacer.replaceAll()
    expect($("#test").attr("src")).toEqual("img1-large.png")
    expect($("#test2").attr("src")).toEqual("img2-large.png")
