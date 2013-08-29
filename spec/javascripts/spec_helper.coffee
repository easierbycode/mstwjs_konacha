#= require application
#= require_tree ./support
#= require_tree ./templates

window.loadFixtures = (filename) ->
  filename = filename.split('.')[0]
  $('body').html(JST["templates/#{filename}"])

chai.use (_chai, utils) ->
  for property in ["Attr", "Class", "Css", "Data", "Html", "Id", "Length", "Prop", "Text", "Value"]
    utils.addMethod chai.Assertion.prototype, "toHave#{property}", (val) ->
      assertHasProperty = new chai.Assertion
      utils.transferFlags(@, assertHasProperty)
      assertHasProperty.to.have["#{property.toLowerCase()}"](val)