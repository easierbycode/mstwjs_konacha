#= require spec_helper
#= require toggler

describe "Trip detail toggler", ->

  describe "clicking a show link", ->
  
    beforeEach ->
      loadFixtures("one_index_trip.html")
      init()
      $('.detail_toggle').click()
  
    it "shows the trip description", ->
      expect($('.detail')).not.to.have.class('hidden')
      
    it 'changes the link action to "Hide"', ->
      console.log $('.detail_toggle').text()
      expect($('.detail_toggle')).to.have.text('Hide Details')

    describe 'clicking the link again', ->

      beforeEach ->
        $('.detail_toggle').click()

      it 'hides the description', ->
        expect($('.detail')).to.have.class('hidden')

      it 'changes the link action back to "show"', ->
        expect($('.detail_toggle')).to.have.text('Show Details')