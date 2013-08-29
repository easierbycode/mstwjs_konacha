#= require application
#= require_tree ./support
#= require_tree ./templates

window.loadFixtures = (filename) ->
  filename = filename.split('.')[0]
  $('body').html(JST["templates/#{filename}"])

chai.use (_chai, utils) ->
  utils.addMethod chai.Assertion.prototype, 'toHaveClass', (str) ->
    assertHasClass = new chai.Assertion
    utils.transferFlags(@, assertHasClass)
    assertHasClass.to.have.class(str)