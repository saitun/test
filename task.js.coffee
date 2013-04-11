#= require models/abstract_model
#= require models/abstract_list

class Do.Models.Task extends Backbone.Model

class Do.Models.TaskList extends Backbone.Collection

  path: (method) -> '/tasks'