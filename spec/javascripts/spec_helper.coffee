#= require application
#= require_tree ./support
#= require_tree ./templates

window.loadFixtures = (filename) ->
  filename = filename.split('.')[0]
  $('body').html(JST["templates/#{filename}"])