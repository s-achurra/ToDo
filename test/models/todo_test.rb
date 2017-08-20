require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "the truth" do
    assert false
  end

  test "should not save todo without title" do
    todo = Todo.new
    todo.due_date = Date.today
    assert_not todo.save
  end

  test "should not save todo without a due date" do
    todo = Todo.new
    todo.title = "Test Title"
    assert_not todo.save
  end


end
