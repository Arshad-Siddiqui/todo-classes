class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list.push(todo)
  end

  def incomplete
    # Returns all non-done todos
    @todo_list.select {|todo|
      !todo.done?
    }
  end

  def complete
    # Returns all complete todos
    @todo_list.select {|todo|
      todo.done?
    }
  end

  def give_up!
    # Marks all todos as complete
    @todo_list.select {|todo|
      todo.mark_done!
    }
  end
end