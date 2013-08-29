#= require spec_helper
#= require toggler

describe "Trip detail toggler", ->

  describe "clicking a show link", ->
  
    beforeEach ->
      loadFixtures("one_index_trip.html")
      init()
      $('.detail_toggle').click()
  
    it "shows the trip description", ->
      expect($('.detail')).not.toHaveClass('hidden')