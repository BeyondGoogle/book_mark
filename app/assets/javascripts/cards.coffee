masonry_start = (content, item) ->
  $(content).masonry
    itemSelector: item
    columnWidth: 260
    isAnimated: true
    animationOptions: duration: 600
