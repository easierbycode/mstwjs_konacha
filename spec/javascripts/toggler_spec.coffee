#= require spec_helper
#= require toggler

describe "Trip detail toggler", ->

  describe "clicking a show link", ->
  
    it "shows the trip description", ->
      $('body').html(JST['templates/one_index_trip'])
      init()
      $('.detail_toggle').click()
      expect($('.detail')).not.to.have.class('hidden')