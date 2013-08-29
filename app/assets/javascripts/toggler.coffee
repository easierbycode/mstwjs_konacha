@init = ->
  $toggle_links = $('.detail_toggle')
  $toggle_links.click (event) ->
    $detail = $(@).siblings '.detail'
    if $detail.hasClass 'hidden'
      $(@).text 'Hide Details'
    else
      $(@).text 'Show Details'
    $detail.toggleClass 'hidden'
    event.preventDefault()

$ -> init()