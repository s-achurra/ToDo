# Rails To Do App

[Live Link][link]

This To Do application was built entirely with rails and JavaScript. By
utilizing view partials and JavaScript handling the entire application
is able to reside within a single user view. This allows for a better
user experience than if directed to multiple pages for a single application.

## Features

- Users can add, edit, delete, and mark To Dos as complete
- Users can open a To Do tile to view more details.
- To Dos provide visual feedback once marked completed or if past due.
- To Dos are ordered by completion and due date.

## Functionality

#### Partial Handling

Both the new form partial and the edit form partial are rendered on the main index view. By default the new form was present, while the edit form was hidden. Selecing to edit a specific To Do toggles visibility for both forms. Referencing the caller `this` we're able to access the specific To Do that we want to edit, update the form with its information and set the form's action to reference the correct patch path.

```javascript
  //app/assets/javascript/todo.js
  function createEditForm() {
    newSection.classList.add("hidden");
    editSection.classList.remove("hidden");

    const todo = this.parentElement.parentElement;

    titleField.value = todo.querySelector('.title').innerHTML
    dueDateField.value = todo.querySelector('.due-date').innerHTML;
    detailsField.value = (todo.querySelector('.details').innerHTML).replace(/<br>/g, "\r");
    editForm.action = `${window.location.origin}/todos/${parseInt(todo.id)}`
  }
```

#### Simple List Sorting

Before building our To Do list we order all To Dos so they are chronological
and are separated by those that are completed and not yet done.

```ruby
  #app/views/todos/index.html.erb
  todos = @todos.sort_by { |todo| todo.due_date}
    .sort_by { |todo| todo.completed ? 1 : 0}
```

#### Custom Toggle Complete Route

To allow a streamline path for the ability to toggle a To Do's completion
a custom route was created pointing to a toggleCompleted function within
the To Do controller.

```ruby
  #config/routes.rb
  patch "togglecompleted" => "todos#toggleCompleted", as: :toggle
```

```ruby
  #app/controllers/todo_controller.rb
  def toggleCompleted
    @todo = Todo.find_by(id: params[:id])
    @todo.toggle!(:completed)
    render :index
  end
```

#### Heroku Hosting

This project has been uploaded and is live using Heroku.
[Live Link][link]

[link]: https://achurra-rails-todo-app.herokuapp.com/
