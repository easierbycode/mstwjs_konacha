@init = ->
  $toggle_links = $('.detail_toggle')
  $toggle_links.click (event) ->
    $detail = $(@).siblings '.detail'
    $detail.toggleClass 'hidden'
    event.preventDefault()