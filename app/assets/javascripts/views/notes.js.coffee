class App.Views.Notes extends Backbone.View
  template: JST['notes/index']

  events:
    'click a': 'showNote'

  render: ->
    @$el.html(@template(notes: @collection))
    # render should return this when it is finished rendering
    this

  showNote: (e) ->
    $note = $(e.currentTarget)
    url = $note.attr("href")
    # Backbone.history doesn't use router by default, have to
    # pass the option `trigger: true`
    Backbone.history.navigate(url, trigger: true)
    # returning false at the end of the event tells the browser
    # not to do it's default behavior
    false
