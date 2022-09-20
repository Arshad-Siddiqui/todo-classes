require 'todo_list'
require 'todo'

RSpec.describe 'TodoList integration' do
  describe '#add' do
    it 'Adds Todo object to incomplete list' do
      todo_list = TodoList.new
      todo = Todo.new('Complete phase 2 challenge 8')
      todo_list.add todo
      expect(todo_list.incomplete).to eq 'Complete phase 2 challenge 8'
    end

    it 'Adds multiple Todo objects to incomplete list' do
      todo_list = TodoList.new
      todo = Todo.new('Complete phase 2 challenge 8')
      todo2 = Todo.new('Complete phase 2 challenge 9')
      todo_list.add todo
      todo_list.add todo2
      expect(todo_list.incomplete).to eq 'Complete phase 2 challenge 8, Complete phase 2 challenge 9'
    end
  end

  describe '#complete' do
    it 'Returns list of complete todos' do
      todo_list = TodoList.new
      todo = Todo.new('Complete phase 2 challenge 8')
      todo2 = Todo.new('Complete phase 2 challenge 9')
      todo_list.add todo
      todo_list.add todo2
      todo2.mark_done!
      expect(todo_list.complete).to eq 'Complete phase 2 challenge 9'
    end
  end

  describe '#incomplete' do
    it 'Returns list of incomplete todo' do
      todo_list = TodoList.new
      todo = Todo.new('Complete phase 2 challenge 8')
      todo2 = Todo.new('Complete phase 2 challenge 9')
      todo_list.add todo
      todo_list.add todo2
      todo2.mark_done!
      expect(todo_list.incomplete).to eq 'Complete phase 2 challenge 8'
    end

    it 'Returns list of incomplete todos' do
      todo_list = TodoList.new
      todo = Todo.new('Complete phase 2 challenge 8')
      todo2 = Todo.new('Complete phase 2 challenge 9')
      todo_list.add todo
      todo_list.add todo2
      expect(todo_list.incomplete).to eq 'Complete phase 2 challenge 8, Complete phase 2 challenge 9'
    end
  end
end