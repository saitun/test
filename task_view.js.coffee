class Do.Views.TaskList extends Backbone.View

  events:
    'click button': 'createTask'

  initialize: (opts) ->
    @collection.bind 'add', @addRow
    @collection.bind 'remove', @removeRow

  render: ->
    _.each @collection.models, (model) ->
      @addRow(model, collection: @collection)

    if @_type == 'project'
      $('header').html('Project Task List')
    else
      $('header').html('Personal Task List')
    @

  addRow: (model, collection) ->
    row = new Do.Views.TaskRow
      model: model
      collection: collection
    $(@el).append row.render()

  createTask: ->
    @collection.add new Do.Models.Task()

  remove: ->
    @collection.unbind 'add', @addRow
    @collection.unbind 'remove', @removeRow

class Do.Views.TaskRow extends Backbone.View

  render: ->
    $(@el).html Do.Templates.task_row()

  handleNameChanged: (e) ->
    name = $(e.target).val()
    @model.set 'name', name
    @model.save()


