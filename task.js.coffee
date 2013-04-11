###
task list's JSON format from server:
[
  tasks: [
    {
      name: "task 1"
      id: 1
      assignee_id: 1
    },
    {
      name: "task 2"
      id: 2
      assignee_id: 2
    }
  ],
  users: [
    {
      name: "Sai Tun"
      id: 1
    },
    {
      name: "David Yang"
      id: 2
    }
  ]
]
###

class Do.Models.Task extends Backbone.Model

class Do.Models.TaskList extends Backbone.Collection

  path: (method) -> '/tasks'
