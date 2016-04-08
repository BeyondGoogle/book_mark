masonry_start = (content, item) ->
  $(content).masonry
    itemSelector: item
    columnWidth: 250
    isAnimated: true
    isFitWidth: true
    gutterWidth: 0
    transitionDuration: "1.8s"

$(window).on 'load', ->
  masonry_start '#js-card-container', '.js-card-content'
